package com.ff.modmenu;

import android.app.Activity;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import android.view.Gravity;
import android.view.View;
import android.widget.*;
import java.util.ArrayList;
import rikka.shizuku.Shizuku;

public class MemoryScannerActivity extends Activity {

    private static final String TAG = "FFModMenu";
    private ISuService suService;
    private int targetPid = -1;
    private ArrayList<Long> foundAddresses = new ArrayList<>();
    private ArrayAdapter<String> resultsAdapter;
    private String selectedType = "INT";
    private TextView resultsCount;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setPadding(20, 20, 20, 20);
        root.setBackgroundColor(0xFF1A1A2E);

        TextView title = new TextView(this);
        title.setText("MEMORY SCANNER");
        title.setTextSize(20);
        title.setTextColor(0xFF00FF88);
        title.setPadding(0, 0, 0, 20);
        root.addView(title);

        TextView status = new TextView(this);
        status.setText("Conectando ao Shizuku...");
        status.setTextColor(0xFFFFFFFF);
        status.setTextSize(14);
        status.setPadding(0, 0, 0, 10);
        root.addView(status);

        TextView pidInfo = new TextView(this);
        pidInfo.setText("PID: nao encontrado");
        pidInfo.setTextColor(0xFFFFD700);
        pidInfo.setTextSize(14);
        pidInfo.setPadding(0, 0, 0, 10);
        root.addView(pidInfo);

        LinearLayout pidRow = new LinearLayout(this);
        pidRow.setOrientation(LinearLayout.HORIZONTAL);

        EditText pkgInput = new EditText(this);
        pkgInput.setHint("Package: com.dts.freefireth");
        pkgInput.setText("com.dts.freefireth");
        pkgInput.setTextSize(12);
        pkgInput.setTextColor(0xFFFFFFFF);
        pkgInput.setHintTextColor(0xFF888888);
        pkgInput.setBackgroundColor(0xFF2A2A4A);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1);
        pkgInput.setLayoutParams(lp);

        Button btnFindPid = new Button(this);
        btnFindPid.setText("PID");
        btnFindPid.setTextSize(12);

        pidRow.addView(pkgInput);
        pidRow.addView(btnFindPid);
        root.addView(pidRow);

        LinearLayout typeRow = new LinearLayout(this);
        typeRow.setOrientation(LinearLayout.HORIZONTAL);
        typeRow.setPadding(0, 10, 0, 10);

        String[] types = {"INT", "FLOAT", "BYTE", "HEX"};
        TextView typeLabel = new TextView(this);
        typeLabel.setText("Tipo: ");
        typeLabel.setTextColor(0xFFFFFFFF);
        typeRow.addView(typeLabel);

        Spinner typeSpinner = new Spinner(this);
        ArrayAdapter<String> typeAdapter = new ArrayAdapter<>(this, android.R.layout.simple_spinner_item, types);
        typeAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        typeSpinner.setAdapter(typeAdapter);
        typeRow.addView(typeSpinner);
        root.addView(typeRow);

        EditText valueInput = new EditText(this);
        valueInput.setHint("Valor (ex: 100, 1.0, FF FF)");
        valueInput.setTextSize(14);
        valueInput.setTextColor(0xFFFFFFFF);
        valueInput.setHintTextColor(0xFF888888);
        valueInput.setBackgroundColor(0xFF2A2A4A);
        root.addView(valueInput);

        LinearLayout scanRow = new LinearLayout(this);
        scanRow.setOrientation(LinearLayout.HORIZONTAL);
        scanRow.setPadding(0, 10, 0, 10);

        Button btnScan = new Button(this);
        btnScan.setText("SCAN");
        btnScan.setTextSize(14);

        Button btnFilter = new Button(this);
        btnFilter.setText("FILTRAR");
        btnFilter.setTextSize(14);

        Button btnReset = new Button(this);
        btnReset.setText("RESET");
        btnReset.setTextSize(14);

        scanRow.addView(btnScan);
        scanRow.addView(btnFilter);
        scanRow.addView(btnReset);
        root.addView(scanRow);

        resultsCount = new TextView(this);
        resultsCount.setText("Resultados: 0");
        resultsCount.setTextColor(0xFF00FF88);
        resultsCount.setTextSize(14);
        resultsCount.setPadding(0, 5, 0, 5);
        root.addView(resultsCount);

        ListView resultsList = new ListView(this);
        resultsList.setBackgroundColor(0xFF0D0D1A);
        resultsAdapter = new ArrayAdapter<>(this, android.R.layout.simple_list_item_1, new ArrayList<>());
        resultsList.setAdapter(resultsAdapter);

        LinearLayout.LayoutParams listLp = new LinearLayout.LayoutParams(
            LinearLayout.LayoutParams.MATCH_PARENT, 0, 1);
        resultsList.setLayoutParams(listLp);
        root.addView(resultsList);

        LinearLayout writeRow = new LinearLayout(this);
        writeRow.setOrientation(LinearLayout.HORIZONTAL);
        writeRow.setPadding(0, 10, 0, 0);

        TextView writeLabel = new TextView(this);
        writeLabel.setText("Addr: ");
        writeLabel.setTextColor(0xFFFFFFFF);
        writeRow.addView(writeLabel);

        EditText addrInput = new EditText(this);
        addrInput.setHint("0x...");
        addrInput.setTextSize(12);
        addrInput.setTextColor(0xFFFFFFFF);
        addrInput.setHintTextColor(0xFF888888);
        addrInput.setBackgroundColor(0xFF2A2A4A);
        LinearLayout.LayoutParams addrLp = new LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1);
        addrInput.setLayoutParams(addrLp);
        writeRow.addView(addrInput);

        EditText writeVal = new EditText(this);
        writeVal.setHint("Valor");
        writeVal.setTextSize(12);
        writeVal.setTextColor(0xFFFFFFFF);
        writeVal.setHintTextColor(0xFF888888);
        writeVal.setBackgroundColor(0xFF2A2A4A);
        writeVal.setLayoutParams(addrLp);
        writeRow.addView(writeVal);

        Button btnWrite = new Button(this);
        btnWrite.setText("WRITE");
        btnWrite.setTextSize(12);
        writeRow.addView(btnWrite);

        root.addView(writeRow);
        setContentView(root);

        // Conectar Shizuku
        try {
            IBinder binder = Shizuku.getBinder();
            if (binder != null) {
                suService = ISuService.Stub.asInterface(binder);
                status.setText("Shizuku conectado!");
            } else {
                status.setText("Shizuku nao encontrado");
            }
        } catch (Exception e) {
            status.setText("Erro: " + e.getMessage());
            Log.e(TAG, "Shizuku connect error", e);
        }

        // Find PID
        btnFindPid.setOnClickListener(v -> {
            if (suService == null) {
                Toast.makeText(this, "Shizuku nao conectado!", Toast.LENGTH_SHORT).show();
                return;
            }
            new Thread(() -> {
                try {
                    int pid = suService.findPid(pkgInput.getText().toString());
                    targetPid = pid;
                    runOnUiThread(() -> {
                        if (pid > 0) {
                            pidInfo.setText("PID: " + pid);
                            pidInfo.setTextColor(0xFF00FF88);
                        } else {
                            pidInfo.setText("PID: nao encontrado");
                            pidInfo.setTextColor(0xFFFF4444);
                        }
                    });
                } catch (Exception e) {
                    Log.e(TAG, "findPid error", e);
                }
            }).start();
        });

        // Scan
        btnScan.setOnClickListener(v -> {
            if (targetPid <= 0) {
                Toast.makeText(this, "Encontre o PID primeiro!", Toast.LENGTH_SHORT).show();
                return;
            }
            selectedType = typeSpinner.getSelectedItem().toString();
            String val = valueInput.getText().toString().trim();
            if (val.isEmpty()) {
                Toast.makeText(this, "Digite um valor!", Toast.LENGTH_SHORT).show();
                return;
            }
            resultsAdapter.clear();
            foundAddresses.clear();
            resultsCount.setText("Scaneando...");
            final String scanValue = val;
            new Thread(() -> doFullScan(scanValue)).start();
        });

        // Filter
        btnFilter.setOnClickListener(v -> {
            if (foundAddresses.isEmpty()) {
                Toast.makeText(this, "Faca um scan primeiro!", Toast.LENGTH_SHORT).show();
                return;
            }
            selectedType = typeSpinner.getSelectedItem().toString();
            String val = valueInput.getText().toString().trim();
            if (val.isEmpty()) {
                Toast.makeText(this, "Digite um valor!", Toast.LENGTH_SHORT).show();
                return;
            }
            final String filterValue = val;
            new Thread(() -> filterResults(filterValue)).start();
        });

        // Reset
        btnReset.setOnClickListener(v -> {
            foundAddresses.clear();
            resultsAdapter.clear();
            resultsCount.setText("Resultados: 0");
        });

        // Select address
        resultsList.setOnItemClickListener((parent, view, position, id) -> {
            if (position < foundAddresses.size()) {
                long addr = foundAddresses.get(position);
                addrInput.setText(String.format("0x%X", addr));
            }
        });

        // Write
        btnWrite.setOnClickListener(v -> {
            if (targetPid <= 0 || suService == null) {
                Toast.makeText(this, "PID ou Shizuku nao disponivel!", Toast.LENGTH_SHORT).show();
                return;
            }
            try {
                long addr = Long.parseLong(addrInput.getText().toString().replace("0x", "").replace("0X", ""), 16);
                String val = writeVal.getText().toString().trim();
                byte[] data = parseValue(val, selectedType);
                if (data != null) {
                    final long writeAddr = addr;
                    final byte[] writeData = data;
                    new Thread(() -> {
                        try {
                            boolean ok = suService.writeMemory(targetPid, writeAddr, writeData);
                            runOnUiThread(() -> Toast.makeText(MemoryScannerActivity.this,
                                ok ? "Escrito!" : "Erro ao escrever", Toast.LENGTH_SHORT).show());
                        } catch (Exception e) {
                            Log.e(TAG, "write error", e);
                        }
                    }).start();
                }
            } catch (Exception e) {
                Toast.makeText(this, "Erro: " + e.getMessage(), Toast.LENGTH_SHORT).show();
            }
        });
    }

    private byte[] parseValue(String val, String type) {
        try {
            switch (type) {
                case "INT": {
                    int i = Integer.parseInt(val);
                    return new byte[]{
                        (byte) (i & 0xFF),
                        (byte) ((i >> 8) & 0xFF),
                        (byte) ((i >> 16) & 0xFF),
                        (byte) ((i >> 24) & 0xFF)
                    };
                }
                case "FLOAT": {
                    float f = Float.parseFloat(val);
                    int bits = Float.floatToIntBits(f);
                    return new byte[]{
                        (byte) (bits & 0xFF),
                        (byte) ((bits >> 8) & 0xFF),
                        (byte) ((bits >> 16) & 0xFF),
                        (byte) ((bits >> 24) & 0xFF)
                    };
                }
                case "BYTE":
                    return new byte[]{(byte) Integer.parseInt(val)};
                case "HEX": {
                    String[] parts = val.split(" ");
                    byte[] data = new byte[parts.length];
                    for (int i = 0; i < parts.length; i++)
                        data[i] = (byte) Integer.parseInt(parts[i], 16);
                    return data;
                }
            }
        } catch (Exception e) {
            Log.e(TAG, "parseValue error", e);
        }
        return null;
    }

    private void doFullScan(String value) {
        try {
            byte[] searchBytes = parseValue(value, selectedType);
            if (searchBytes == null) return;

            String maps = suService.execCommand("cat /proc/" + targetPid + "/maps");
            String[] lines = maps.split("\n");

            int regionCount = 0;

            for (String line : lines) {
                if (!line.contains("rw")) continue;

                String[] parts = line.split("\\s+");
                if (parts.length < 1) continue;

                String[] addrRange = parts[0].split("-");
                if (addrRange.length < 2) continue;

                try {
                    long start = Long.parseLong(addrRange[0], 16);
                    long end = Long.parseLong(addrRange[1], 16);
                    long regionSize = end - start;

                    if (regionSize <= 0 || regionSize > 50 * 1024 * 1024) continue;

                    regionCount++;
                    int currentRegion = regionCount;

                    int chunkSize = 4096;
                    for (long offset = 0; offset < regionSize; offset += chunkSize) {
                        int toRead = (int) Math.min(chunkSize, regionSize - offset);
                        byte[] data = suService.readMemory(targetPid, start + offset, toRead);
                        if (data == null) continue;

                        for (int i = 0; i <= data.length - searchBytes.length; i++) {
                            boolean match = true;
                            for (int j = 0; j < searchBytes.length; j++) {
                                if (data[i + j] != searchBytes[j]) {
                                    match = false;
                                    break;
                                }
                            }
                            if (match) {
                                long foundAddr = start + offset + i;
                                foundAddresses.add(foundAddr);
                                String display = String.format("0x%X [%s]", foundAddr,
                                    readCurrentValue(foundAddr, selectedType));
                                runOnUiThread(() -> {
                                    resultsAdapter.add(display);
                                    resultsCount.setText("Resultados: " + foundAddresses.size());
                                });
                            }
                        }

                        if (currentRegion % 5 == 0) {
                            runOnUiThread(() -> resultsCount.setText(
                                String.format("Scaneando... regiao %d | encontrados: %d",
                                    currentRegion, foundAddresses.size())));
                        }
                    }
                } catch (Exception e) {
                    Log.e(TAG, "Scan region error", e);
                }
            }

            runOnUiThread(() -> resultsCount.setText(
                "Scan completo! " + foundAddresses.size() + " resultados"));

        } catch (Exception e) {
            Log.e(TAG, "doFullScan error", e);
            runOnUiThread(() -> resultsCount.setText("Erro no scan"));
        }
    }

    private String readCurrentValue(long addr, String type) {
        try {
            int size = type.equals("BYTE") ? 1 : 4;
            byte[] data = suService.readMemory(targetPid, addr, size);
            if (data == null) return "?";

            switch (type) {
                case "INT": {
                    int val = (data[0] & 0xFF) | ((data[1] & 0xFF) << 8) |
                              ((data[2] & 0xFF) << 16) | ((data[3] & 0xFF) << 24);
                    return "INT:" + val;
                }
                case "FLOAT": {
                    int bits = (data[0] & 0xFF) | ((data[1] & 0xFF) << 8) |
                               ((data[2] & 0xFF) << 16) | ((data[3] & 0xFF) << 24);
                    return "FLOAT:" + Float.intBitsToFloat(bits);
                }
                case "BYTE":
                    return "BYTE:" + String.format("0x%02X", data[0] & 0xFF);
                case "HEX":
                    StringBuilder hex = new StringBuilder();
                    for (byte b : data) hex.append(String.format("%02X ", b & 0xFF));
                    return "HEX:" + hex.toString().trim();
            }
        } catch (Exception e) {
            Log.e(TAG, "readCurrentValue error", e);
        }
        return "?";
    }

    private void filterResults(String value) {
        ArrayList<Long> filtered = new ArrayList<>();
        byte[] searchBytes = parseValue(value, selectedType);
        if (searchBytes == null) return;

        for (long addr : foundAddresses) {
            try {
                int size = searchBytes.length;
                byte[] data = suService.readMemory(targetPid, addr, size);
                if (data == null) continue;

                boolean match = true;
                for (int j = 0; j < searchBytes.length; j++) {
                    if (data[j] != searchBytes[j]) {
                        match = false;
                        break;
                    }
                }
                if (match) filtered.add(addr);
            } catch (Exception e) {
                Log.e(TAG, "filter error", e);
            }
        }

        foundAddresses = filtered;
        runOnUiThread(() -> {
            resultsAdapter.clear();
            for (long addr : foundAddresses) {
                resultsAdapter.add(String.format("0x%X [%s]", addr, readCurrentValue(addr, selectedType)));
            }
            resultsCount.setText("Filtrado: " + foundAddresses.size() + " resultados");
        });
    }
}
