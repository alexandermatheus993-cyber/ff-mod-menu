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
                case TRANSACTION_findPid: {
                    data.enforceInterface(DESCRIPTOR);
                    int result = findPid(data.readString());
                    reply.writeNoException();
                    reply.writeInt(result);
                    return true;
                }
                case TRANSACTION_writeMemory: {
                    data.enforceInterface(DESCRIPTOR);
                    int pid = data.readInt();
                    long address = data.readLong();
                    byte[] bytes = data.createByteArray();
                    boolean result = writeMemory(pid, address, bytes);
                    reply.writeNoException();
                    reply.writeInt(result ? 1 : 0);
                    return true;
                }
                case TRANSACTION_readMemory: {
                    data.enforceInterface(DESCRIPTOR);
                    int pid = data.readInt();
                    long address = data.readLong();
                    int size = data.readInt();
                    byte[] result = readMemory(pid, address, size);
                    reply.writeNoException();
                    reply.writeByteArray(result);
                    return true;
                }
                case TRANSACTION_closeSu: {
                    data.enforceInterface(DESCRIPTOR);
                    closeSu();
                    reply.writeNoException();
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
                    mRemote.transact(TRANSACTION_findPid, data, reply, 0);
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
                    mRemote.transact(TRANSACTION_writeMemory, data, reply, 0);
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
                    mRemote.transact(TRANSACTION_readMemory, data, reply, 0);
                    reply.readException();
                    return reply.createByteArray();
                } finally { data.recycle(); reply.recycle(); }
            }

            @Override
            public void closeSu() throws RemoteException {
                Parcel data = Parcel.obtain(), reply = Parcel.obtain();
                try {
                    data.writeInterfaceToken(DESCRIPTOR);
                    mRemote.transact(TRANSACTION_closeSu, data, reply, 0);
                    reply.readException();
                } finally { data.recycle(); reply.recycle(); }
            }
        }
    }

    int findPid(String packageName) throws RemoteException;
    boolean writeMemory(int pid, long address, byte[] bytes) throws RemoteException;
    byte[] readMemory(int pid, long address, int size) throws RemoteException;
    void closeSu() throws RemoteException;
}
