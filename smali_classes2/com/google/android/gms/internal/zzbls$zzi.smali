.class final Lcom/google/android/gms/internal/zzbls$zzi;
.super Lcom/google/android/gms/internal/zzbmd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzi"
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

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbls$zzi;->zzbXY:Lcom/google/android/gms/internal/zzbmx;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbls$zzi;->zzbYk:Lcom/google/android/gms/internal/zzblz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbls$zzi;->zzbYj:Lcom/google/firebase/auth/d;

    invoke-virtual {v1}, Lcom/google/firebase/auth/d;->zzVH()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbls$zzi;->zzbXY:Lcom/google/android/gms/internal/zzbmx;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbls$zzi;->zzbYi:Lcom/google/android/gms/internal/zzbmd$zza;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzblz;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzbmx;Lcom/google/android/gms/internal/zzbly;)V

    return-void
.end method

.method public zzVO()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbls$zzi;->zzbXF:Lcom/google/firebase/a;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbls$zzi;->zzbYo:Lcom/google/android/gms/internal/zzbmj;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbls;->zzb(Lcom/google/firebase/a;Lcom/google/android/gms/internal/zzbmj;)Lcom/google/android/gms/internal/zzbnf;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbls$zzi;->zzbYl:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/zzbmz;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbls$zzi;->zzbYn:Lcom/google/android/gms/internal/zzbmn;

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/zzbmz;->zza(Lcom/google/android/gms/internal/zzbmn;Lcom/google/firebase/auth/d;)V

    new-instance v0, Lcom/google/android/gms/internal/zzbnc;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbnc;-><init>(Lcom/google/android/gms/internal/zzbnf;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbls$zzi;->zzae(Ljava/lang/Object;)V

    return-void
.end method
