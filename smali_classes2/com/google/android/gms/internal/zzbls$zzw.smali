.class final Lcom/google/android/gms/internal/zzbls$zzw;
.super Lcom/google/android/gms/internal/zzbmd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzw"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbmd",
        "<",
        "Ljava/lang/Void;",
        "Lcom/google/android/gms/internal/zzbmz;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzajh:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbmd;-><init>(I)V

    const-string v0, "password cannot be null or empty"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbls$zzw;->zzajh:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dispatch()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbls$zzw;->zzbYk:Lcom/google/android/gms/internal/zzblz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbls$zzw;->zzbYj:Lcom/google/firebase/auth/d;

    invoke-virtual {v1}, Lcom/google/firebase/auth/d;->zzVH()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbls$zzw;->zzajh:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbls$zzw;->zzbYi:Lcom/google/android/gms/internal/zzbmd$zza;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzblz;->zzb(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzbly;)V

    return-void
.end method

.method public zzVO()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbls$zzw;->zzbYl:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/zzbmz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbls$zzw;->zzbYn:Lcom/google/android/gms/internal/zzbmn;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbls$zzw;->zzbXF:Lcom/google/firebase/a;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbls$zzw;->zzbYo:Lcom/google/android/gms/internal/zzbmj;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzbls;->zzb(Lcom/google/firebase/a;Lcom/google/android/gms/internal/zzbmj;)Lcom/google/android/gms/internal/zzbnf;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzbmz;->zza(Lcom/google/android/gms/internal/zzbmn;Lcom/google/firebase/auth/d;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbls$zzw;->zzVU()V

    return-void
.end method
