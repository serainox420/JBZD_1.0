.class final Lcom/google/android/gms/internal/zzbls$zzk;
.super Lcom/google/android/gms/internal/zzbmd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzk"
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
.field private final zzbXY:Lcom/google/android/gms/internal/zzbmx;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/a;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbmd;-><init>(I)V

    const-string v0, "credential cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbna;->zza(Lcom/google/firebase/auth/a;)Lcom/google/android/gms/internal/zzbmx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbls$zzk;->zzbXY:Lcom/google/android/gms/internal/zzbmx;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbls$zzk;->zzbYk:Lcom/google/android/gms/internal/zzblz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbls$zzk;->zzbXY:Lcom/google/android/gms/internal/zzbmx;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbls$zzk;->zzbYi:Lcom/google/android/gms/internal/zzbmd$zza;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzblz;->zza(Lcom/google/android/gms/internal/zzbmx;Lcom/google/android/gms/internal/zzbly;)V

    return-void
.end method

.method public zzVO()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbls$zzk;->zzbXF:Lcom/google/firebase/a;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbls$zzk;->zzbYo:Lcom/google/android/gms/internal/zzbmj;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbls;->zzb(Lcom/google/firebase/a;Lcom/google/android/gms/internal/zzbmj;)Lcom/google/android/gms/internal/zzbnf;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbls$zzk;->zzbYj:Lcom/google/firebase/auth/d;

    invoke-virtual {v0}, Lcom/google/firebase/auth/d;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbnf;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbls$zzk;->zzbYl:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/zzbmz;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbls$zzk;->zzbYn:Lcom/google/android/gms/internal/zzbmn;

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/zzbmz;->zza(Lcom/google/android/gms/internal/zzbmn;Lcom/google/firebase/auth/d;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbls$zzk;->zzVU()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzbnh;->zzWr()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbls$zzk;->zzcf(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0
.end method
