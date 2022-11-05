.class final Lcom/google/android/gms/internal/zzbls$zzg;
.super Lcom/google/android/gms/internal/zzbmd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzg"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbmd",
        "<",
        "Lcom/google/firebase/auth/e;",
        "Lcom/google/android/gms/internal/zzbmz;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzbXW:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbmd;-><init>(I)V

    const-string v0, "refresh token cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbls$zzg;->zzbXW:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dispatch()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbls$zzg;->zzbYk:Lcom/google/android/gms/internal/zzblz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbls$zzg;->zzbXW:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbls$zzg;->zzbYi:Lcom/google/android/gms/internal/zzbmd$zza;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzblz;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzbly;)V

    return-void
.end method

.method public zzVO()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbls$zzg;->zzbYn:Lcom/google/android/gms/internal/zzbmn;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbls$zzg;->zzbXW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbmn;->zziy(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbls$zzg;->zzbYl:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/zzbmz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbls$zzg;->zzbYn:Lcom/google/android/gms/internal/zzbmn;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbls$zzg;->zzbYj:Lcom/google/firebase/auth/d;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzbmz;->zza(Lcom/google/android/gms/internal/zzbmn;Lcom/google/firebase/auth/d;)V

    new-instance v0, Lcom/google/firebase/auth/e;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbls$zzg;->zzbYn:Lcom/google/android/gms/internal/zzbmn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbmn;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/auth/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbls$zzg;->zzae(Ljava/lang/Object;)V

    return-void
.end method
