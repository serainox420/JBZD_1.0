package com.google.android.gms.tagmanager;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tagmanager.ContainerHolder;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zzo implements ContainerHolder {
    private boolean zzaLQ;
    private Status zzair;
    private Container zzbFc;
    private Container zzbFd;
    private zzb zzbFe;
    private zza zzbFf;
    private TagManager zzbFg;
    private final Looper zzrs;

    /* loaded from: classes2.dex */
    public interface zza {
        String zzQh();

        void zzQj();

        void zzgW(String str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class zzb extends Handler {
        private final ContainerHolder.ContainerAvailableListener zzbFh;

        public zzb(ContainerHolder.ContainerAvailableListener containerAvailableListener, Looper looper) {
            super(looper);
            this.zzbFh = containerAvailableListener;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    zzgY((String) message.obj);
                    return;
                default:
                    zzbo.e("Don't know how to handle this message.");
                    return;
            }
        }

        public void zzgX(String str) {
            sendMessage(obtainMessage(1, str));
        }

        protected void zzgY(String str) {
            this.zzbFh.onContainerAvailable(zzo.this, str);
        }
    }

    public zzo(Status status) {
        this.zzair = status;
        this.zzrs = null;
    }

    public zzo(TagManager tagManager, Looper looper, Container container, zza zzaVar) {
        this.zzbFg = tagManager;
        this.zzrs = looper == null ? Looper.getMainLooper() : looper;
        this.zzbFc = container;
        this.zzbFf = zzaVar;
        this.zzair = Status.zzazx;
        tagManager.zza(this);
    }

    private void zzQi() {
        if (this.zzbFe != null) {
            this.zzbFe.zzgX(this.zzbFd.zzQf());
        }
    }

    @Override // com.google.android.gms.tagmanager.ContainerHolder
    public synchronized Container getContainer() {
        Container container = null;
        synchronized (this) {
            if (this.zzaLQ) {
                zzbo.e("ContainerHolder is released.");
            } else {
                if (this.zzbFd != null) {
                    this.zzbFc = this.zzbFd;
                    this.zzbFd = null;
                }
                container = this.zzbFc;
            }
        }
        return container;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getContainerId() {
        if (this.zzaLQ) {
            zzbo.e("getContainerId called on a released ContainerHolder.");
            return "";
        }
        return this.zzbFc.getContainerId();
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.zzair;
    }

    @Override // com.google.android.gms.tagmanager.ContainerHolder
    public synchronized void refresh() {
        if (this.zzaLQ) {
            zzbo.e("Refreshing a released ContainerHolder.");
        } else {
            this.zzbFf.zzQj();
        }
    }

    @Override // com.google.android.gms.common.api.Releasable
    public synchronized void release() {
        if (this.zzaLQ) {
            zzbo.e("Releasing a released ContainerHolder.");
        } else {
            this.zzaLQ = true;
            this.zzbFg.zzb(this);
            this.zzbFc.release();
            this.zzbFc = null;
            this.zzbFd = null;
            this.zzbFf = null;
            this.zzbFe = null;
        }
    }

    @Override // com.google.android.gms.tagmanager.ContainerHolder
    public synchronized void setContainerAvailableListener(ContainerHolder.ContainerAvailableListener containerAvailableListener) {
        if (this.zzaLQ) {
            zzbo.e("ContainerHolder is released.");
        } else if (containerAvailableListener == null) {
            this.zzbFe = null;
        } else {
            this.zzbFe = new zzb(containerAvailableListener, this.zzrs);
            if (this.zzbFd != null) {
                zzQi();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String zzQh() {
        if (this.zzaLQ) {
            zzbo.e("setCtfeUrlPathAndQuery called on a released ContainerHolder.");
            return "";
        }
        return this.zzbFf.zzQh();
    }

    public synchronized void zza(Container container) {
        if (!this.zzaLQ) {
            if (container == null) {
                zzbo.e("Unexpected null container.");
            } else {
                this.zzbFd = container;
                zzQi();
            }
        }
    }

    public synchronized void zzgU(String str) {
        if (!this.zzaLQ) {
            this.zzbFc.zzgU(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzgW(String str) {
        if (this.zzaLQ) {
            zzbo.e("setCtfeUrlPathAndQuery called on a released ContainerHolder.");
        } else {
            this.zzbFf.zzgW(str);
        }
    }
}
