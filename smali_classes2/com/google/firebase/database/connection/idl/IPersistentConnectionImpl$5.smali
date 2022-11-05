.class final Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl$5;
.super Lcom/google/firebase/database/connection/idl/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->a(Lcom/google/android/gms/internal/zzbok;)Lcom/google/firebase/database/connection/idl/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/zzbok;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbok;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl$5;->a:Lcom/google/android/gms/internal/zzbok;

    invoke-direct {p0}, Lcom/google/firebase/database/connection/idl/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLcom/google/firebase/database/connection/idl/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl$5;->a:Lcom/google/android/gms/internal/zzbok;

    new-instance v1, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl$5$1;

    invoke-direct {v1, p0, p2}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl$5$1;-><init>(Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl$5;Lcom/google/firebase/database/connection/idl/f;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/zzbok;->zza(ZLcom/google/android/gms/internal/zzbok$zza;)V

    return-void
.end method
