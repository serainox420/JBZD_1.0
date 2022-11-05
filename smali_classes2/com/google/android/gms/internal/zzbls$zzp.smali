.class final Lcom/google/android/gms/internal/zzbls$zzp;
.super Lcom/google/android/gms/internal/zzbmd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbmd",
        "<",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzbmz;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbmd;-><init>(I)V

    return-void
.end method


# virtual methods
.method public dispatch()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbls$zzp;->zzbYk:Lcom/google/android/gms/internal/zzblz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbls$zzp;->zzbYi:Lcom/google/android/gms/internal/zzbmd$zza;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzblz;->zza(Lcom/google/android/gms/internal/zzbly;)V

    return-void
.end method

.method public zzVO()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbls$zzp;->zzbXF:Lcom/google/firebase/a;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbls$zzp;->zzbYo:Lcom/google/android/gms/internal/zzbmj;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzbls;->zzb(Lcom/google/firebase/a;Lcom/google/android/gms/internal/zzbmj;Z)Lcom/google/android/gms/internal/zzbnf;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbls$zzp;->zzbYl:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/zzbmz;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbls$zzp;->zzbYn:Lcom/google/android/gms/internal/zzbmn;

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/zzbmz;->zza(Lcom/google/android/gms/internal/zzbmn;Lcom/google/firebase/auth/d;)V

    new-instance v0, Lcom/google/android/gms/internal/zzbnc;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbnc;-><init>(Lcom/google/android/gms/internal/zzbnf;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbls$zzp;->zzae(Ljava/lang/Object;)V

    return-void
.end method
