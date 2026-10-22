package com.ff.modmenu;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface ISuService extends IInterface {

    abstract class Stub extends android.os.Binder implements ISuService {
        private static final String DESCRIPTOR = "com.ff.modmenu.ISuService";
        static final int TRANSACTION_findPid = 1;
        static final int TRANSACTION_writeMemory = 2;
        static final int TRANSACTION_readMemory = 3;
        static final int TRANSACTION_closeSu = 4;
        static final int TRANSACTION_execCommand = 5;

        public Stub() { attachInterface(this, DESCRIPTOR); }

        public static ISuService asInterface(IBinder obj) {
            if (obj == null) return null;
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin instanceof ISuService) return (ISuService) iin;
            return new Proxy(obj);
        }

        @Override public IBinder asBinder() { return this; }

        @Override
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            switch (code) {
                case 1: {
                    data.enforceInterface(DESCRIPTOR);
                    int result = findPid(data.readString());
                    reply.writeNoException();
                    reply.writeInt(result);
                    return true;
                }
                case 2: {
                    data.enforceInterface(DESCRIPTOR);
                    int pid = data.readInt();
                    long address = data.readLong();
                    byte[] bytes = data.createByteArray();
                    boolean result = writeMemory(pid, address, bytes);
                    reply.writeNoException();
                    reply.writeInt(result ? 1 : 0);
                    return true;
                }
                case 3: {
                    data.enforceInterface(DESCRIPTOR);
                    int pid = data.readInt();
                    long address = data.readLong();
                    int size = data.readInt();
                    byte[] result = readMemory(pid, address, size);
                    reply.writeNoException();
                    reply.writeByteArray(result);
                    return true;
                }
                case 4: {
                    data.enforceInterface(DESCRIPTOR);
                    closeSu();
                    reply.writeNoException();
                    return true;
                }
                case 5: {
                    data.enforceInterface(DESCRIPTOR);
                    String result = execCommand(data.readString());
                    reply.writeNoException();
                    reply.writeString(result);
                    return true;
                }
            }
            return super.onTransact(code, data, reply, flags);
        }

        static class Proxy implements ISuService {
            private IBinder mRemote;
            Proxy(IBinder remote) { mRemote = remote; }
            @Override public IBinder asBinder() { return mRemote; }

            @Override
            public int findPid(String packageName) throws RemoteException {
                Parcel data = Parcel.obtain(), reply = Parcel.obtain();
                try {
                    data.writeInterfaceToken(DESCRIPTOR);
                    data.writeString(packageName);
                    mRemote.transact(1, data, reply, 0);
                    reply.readException();
                    return reply.readInt();
                } finally { data.recycle(); reply.recycle(); }
            }

            @Override
            public boolean writeMemory(int pid, long address, byte[] bytes) throws RemoteException {
                Parcel data = Parcel.obtain(), reply = Parcel.obtain();
                try {
                    data.writeInterfaceToken(DESCRIPTOR);
                    data.writeInt(pid);
                    data.writeLong(address);
                    data.writeByteArray(bytes);
                    mRemote.transact(2, data, reply, 0);
                    reply.readException();
                    return reply.readInt() == 1;
                } finally { data.recycle(); reply.recycle(); }
            }

            @Override
            public byte[] readMemory(int pid, long address, int size) throws RemoteException {
                Parcel data = Parcel.obtain(), reply = Parcel.obtain();
                try {
                    data.writeInterfaceToken(DESCRIPTOR);
                    data.writeInt(pid);
                    data.writeLong(address);
                    data.writeInt(size);
                    mRemote.transact(3, data, reply, 0);
                    reply.readException();
                    return reply.createByteArray();
                } finally { data.recycle(); reply.recycle(); }
            }

            @Override
            public void closeSu() throws RemoteException {
                Parcel data = Parcel.obtain(), reply = Parcel.obtain();
                try {
                    data.writeInterfaceToken(DESCRIPTOR);
                    mRemote.transact(4, data, reply, 0);
                    reply.readException();
                } finally { data.recycle(); reply.recycle(); }
            }

            @Override
            public String execCommand(String cmd) throws RemoteException {
                Parcel data = Parcel.obtain(), reply = Parcel.obtain();
                try {
                    data.writeInterfaceToken(DESCRIPTOR);
                    data.writeString(cmd);
                    mRemote.transact(5, data, reply, 0);
                    reply.readException();
                    return reply.readString();
                } finally { data.recycle(); reply.recycle(); }
            }
        }
    }

    int findPid(String packageName) throws RemoteException;
    boolean writeMemory(int pid, long address, byte[] bytes) throws RemoteException;
    byte[] readMemory(int pid, long address, int size) throws RemoteException;
    void closeSu() throws RemoteException;
    String execCommand(String cmd) throws RemoteException;
}
