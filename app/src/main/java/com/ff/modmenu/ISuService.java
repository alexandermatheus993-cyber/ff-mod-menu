package com.ff.modmenu;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface ISuService extends IInterface {

    String readMemory(int pid, long address, int size) throws RemoteException;
    boolean writeMemory(int pid, long address, String hexValue) throws RemoteException;
    int findPid(String packageName) throws RemoteException;
    long findBaseAddress(int pid, String libName) throws RemoteException;
    long[] scanPattern(int pid, long startAddr, long endAddr, String pattern) throws RemoteException;
    boolean pokeMemory(int pid, long address, int value) throws RemoteException;
    int peekMemory(int pid, long address) throws RemoteException;

    abstract class Stub extends Binder implements ISuService {
        private static final String DESCRIPTOR = "com.ff.modmenu.ISuService";
        static final int TRANSACTION_readMemory = IBinder.FIRST_CALL_TRANSACTION;
        static final int TRANSACTION_writeMemory = IBinder.FIRST_CALL_TRANSACTION + 1;
        static final int TRANSACTION_findPid = IBinder.FIRST_CALL_TRANSACTION + 2;
        static final int TRANSACTION_findBaseAddress = IBinder.FIRST_CALL_TRANSACTION + 3;
        static final int TRANSACTION_scanPattern = IBinder.FIRST_CALL_TRANSACTION + 4;
        static final int TRANSACTION_pokeMemory = IBinder.FIRST_CALL_TRANSACTION + 5;
        static final int TRANSACTION_peekMemory = IBinder.FIRST_CALL_TRANSACTION + 6;

        public Stub() { attachInterface(this, DESCRIPTOR); }

        public static ISuService asInterface(IBinder obj) {
            if (obj == null) return null;
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin instanceof ISuService) return (ISuService) iin;
            return new Proxy(obj);
        }

        @Override public IBinder asBinder() { return this; }

        @Override
        protected boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            switch (code) {
                case TRANSACTION_readMemory: {
                    data.enforceInterface(DESCRIPTOR);
                    int pid = data.readInt();
                    long address = data.readLong();
                    int size = data.readInt();
                    String result = readMemory(pid, address, size);
                    reply.writeNoException();
                    reply.writeString(result);
                    return true;
                }
                case TRANSACTION_writeMemory: {
                    data.enforceInterface(DESCRIPTOR);
                    int pid = data.readInt();
                    long address = data.readLong();
                    String hexValue = data.readString();
                    boolean result = writeMemory(pid, address, hexValue);
                    reply.writeNoException();
                    reply.writeInt(result ? 1 : 0);
                    return true;
                }
                case TRANSACTION_findPid: {
                    data.enforceInterface(DESCRIPTOR);
                    String pkg = data.readString();
                    int result = findPid(pkg);
                    reply.writeNoException();
                    reply.writeInt(result);
                    return true;
                }
                case TRANSACTION_findBaseAddress: {
                    data.enforceInterface(DESCRIPTOR);
                    int pid = data.readInt();
                    String libName = data.readString();
                    long result = findBaseAddress(pid, libName);
                    reply.writeNoException();
                    reply.writeLong(result);
                    return true;
                }
                case TRANSACTION_scanPattern: {
                    data.enforceInterface(DESCRIPTOR);
                    int pid = data.readInt();
                    long startAddr = data.readLong();
                    long endAddr = data.readLong();
                    String pattern = data.readString();
                    long[] result = scanPattern(pid, startAddr, endAddr, pattern);
                    reply.writeNoException();
                    reply.writeLongArray(result);
                    return true;
                }
                case TRANSACTION_pokeMemory: {
                    data.enforceInterface(DESCRIPTOR);
                    int pid = data.readInt();
                    long address = data.readLong();
                    int value = data.readInt();
                    boolean result = pokeMemory(pid, address, value);
                    reply.writeNoException();
                    reply.writeInt(result ? 1 : 0);
                    return true;
                }
                case TRANSACTION_peekMemory: {
                    data.enforceInterface(DESCRIPTOR);
                    int pid = data.readInt();
                    long address = data.readLong();
                    int result = peekMemory(pid, address);
                    reply.writeNoException();
                    reply.writeInt(result);
                    return true;
                }
            }
            return super.onTransact(code, data, reply, flags);
        }

        private static class Proxy implements ISuService {
            private IBinder mRemote;
            Proxy(IBinder remote) { mRemote = remote; }
            @Override public IBinder asBinder() { return mRemote; }
            public String getInterfaceDescriptor() { return DESCRIPTOR; }

            @Override public String readMemory(int pid, long address, int size) throws RemoteException {
                Parcel data = Parcel.obtain(), reply = Parcel.obtain();
                try {
                    data.writeInterfaceToken(DESCRIPTOR);
                    data.writeInt(pid); data.writeLong(address); data.writeInt(size);
                    mRemote.transact(TRANSACTION_readMemory, data, reply, 0);
                    reply.readException();
                    return reply.readString();
                } finally { data.recycle(); reply.recycle(); }
            }

            @Override public boolean writeMemory(int pid, long address, String hexValue) throws RemoteException {
                Parcel data = Parcel.obtain(), reply = Parcel.obtain();
                try {
                    data.writeInterfaceToken(DESCRIPTOR);
                    data.writeInt(pid); data.writeLong(address); data.writeString(hexValue);
                    mRemote.transact(TRANSACTION_writeMemory, data, reply, 0);
                    reply.readException();
                    return reply.readInt() != 0;
                } finally { data.recycle(); reply.recycle(); }
            }

            @Override public int findPid(String packageName) throws RemoteException {
                Parcel data = Parcel.obtain(), reply = Parcel.obtain();
                try {
                    data.writeInterfaceToken(DESCRIPTOR);
                    data.writeString(packageName);
                    mRemote.transact(TRANSACTION_findPid, data, reply, 0);
                    reply.readException();
                    return reply.readInt();
                } finally { data.recycle(); reply.recycle(); }
            }

            @Override public long findBaseAddress(int pid, String libName) throws RemoteException {
                Parcel data = Parcel.obtain(), reply = Parcel.obtain();
                try {
                    data.writeInterfaceToken(DESCRIPTOR);
                    data.writeInt(pid); data.writeString(libName);
                    mRemote.transact(TRANSACTION_findBaseAddress, data, reply, 0);
                    reply.readException();
                    return reply.readLong();
                } finally { data.recycle(); reply.recycle(); }
            }

            @Override public long[] scanPattern(int pid, long startAddr, long endAddr, String pattern) throws RemoteException {
                Parcel data = Parcel.obtain(), reply = Parcel.obtain();
                try {
                    data.writeInterfaceToken(DESCRIPTOR);
                    data.writeInt(pid); data.writeLong(startAddr); data.writeLong(endAddr); data.writeString(pattern);
                    mRemote.transact(TRANSACTION_scanPattern, data, reply, 0);
                    reply.readException();
                    return reply.createLongArray();
                } finally { data.recycle(); reply.recycle(); }
            }

            @Override public boolean pokeMemory(int pid, long address, int value) throws RemoteException {
                Parcel data = Parcel.obtain(), reply = Parcel.obtain();
                try {
                    data.writeInterfaceToken(DESCRIPTOR);
                    data.writeInt(pid); data.writeLong(address); data.writeInt(value);
                    mRemote.transact(TRANSACTION_pokeMemory, data, reply, 0);
                    reply.readException();
                    return reply.readInt() != 0;
                } finally { data.recycle(); reply.recycle(); }
            }

            @Override public int peekMemory(int pid, long address) throws RemoteException {
                Parcel data = Parcel.obtain(), reply = Parcel.obtain();
                try {
                    data.writeInterfaceToken(DESCRIPTOR);
                    data.writeInt(pid); data.writeLong(address);
                    mRemote.transact(TRANSACTION_peekMemory, data, reply, 0);
                    reply.readException();
                    return reply.readInt();
                } finally { data.recycle(); reply.recycle(); }
            }
        }
    }
}
