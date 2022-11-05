.class Lcom/google/android/gms/internal/zzix$1$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzix$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzix$1;->onAdLeftApplication()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzix$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/internal/zziy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/zziy;->zztk:Lcom/google/android/gms/internal/zzep;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/zziy;->zztk:Lcom/google/android/gms/internal/zzep;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzep;->onAdLeftApplication()V

    :cond_0
    return-void
.end method
