.class Lcom/google/android/gms/internal/zzix$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzix$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzix$3;->zza(Lcom/google/android/gms/internal/zzld;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzIQ:Lcom/google/android/gms/internal/zzld;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzix$3;Lcom/google/android/gms/internal/zzld;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzix$3$1;->zzIQ:Lcom/google/android/gms/internal/zzld;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/internal/zziy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/zziy;->zzIW:Lcom/google/android/gms/internal/zzle;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/zziy;->zzIW:Lcom/google/android/gms/internal/zzle;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzix$3$1;->zzIQ:Lcom/google/android/gms/internal/zzld;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzle;->zza(Lcom/google/android/gms/internal/zzld;)V

    :cond_0
    return-void
.end method
