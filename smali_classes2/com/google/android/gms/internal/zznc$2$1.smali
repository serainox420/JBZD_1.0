.class Lcom/google/android/gms/internal/zznc$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqp$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zznc$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzqp$zzc",
        "<",
        "Lcom/google/android/gms/internal/zzjj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzTF:Lcom/google/android/gms/internal/zzgj;

.field final synthetic zzTG:Lcom/google/android/gms/internal/zznc$2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zznc$2;Lcom/google/android/gms/internal/zzgj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zznc$2$1;->zzTG:Lcom/google/android/gms/internal/zznc$2;

    iput-object p2, p0, Lcom/google/android/gms/internal/zznc$2$1;->zzTF:Lcom/google/android/gms/internal/zzgj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/internal/zzjj;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zznc$2$1;->zzTG:Lcom/google/android/gms/internal/zznc$2;

    iget-object v0, v0, Lcom/google/android/gms/internal/zznc$2;->zzsK:Lcom/google/android/gms/internal/zzgl;

    iget-object v1, p0, Lcom/google/android/gms/internal/zznc$2$1;->zzTF:Lcom/google/android/gms/internal/zzgj;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "jsf"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzgl;->zza(Lcom/google/android/gms/internal/zzgj;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zznc$2$1;->zzTG:Lcom/google/android/gms/internal/zznc$2;

    iget-object v0, v0, Lcom/google/android/gms/internal/zznc$2;->zzsK:Lcom/google/android/gms/internal/zzgl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgl;->zzfC()V

    const-string v0, "/invalidRequest"

    iget-object v1, p0, Lcom/google/android/gms/internal/zznc$2$1;->zzTG:Lcom/google/android/gms/internal/zznc$2;

    iget-object v1, v1, Lcom/google/android/gms/internal/zznc$2;->zzTC:Lcom/google/android/gms/internal/zzne;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzne;->zzTN:Lcom/google/android/gms/internal/zzid;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzjj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    const-string v0, "/loadAdURL"

    iget-object v1, p0, Lcom/google/android/gms/internal/zznc$2$1;->zzTG:Lcom/google/android/gms/internal/zznc$2;

    iget-object v1, v1, Lcom/google/android/gms/internal/zznc$2;->zzTC:Lcom/google/android/gms/internal/zzne;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzne;->zzTO:Lcom/google/android/gms/internal/zzid;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzjj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    const-string v0, "/loadAd"

    iget-object v1, p0, Lcom/google/android/gms/internal/zznc$2$1;->zzTG:Lcom/google/android/gms/internal/zznc$2;

    iget-object v1, v1, Lcom/google/android/gms/internal/zznc$2;->zzTC:Lcom/google/android/gms/internal/zzne;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzne;->zzTP:Lcom/google/android/gms/internal/zzid;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzjj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    :try_start_0
    const-string v0, "AFMA_getAd"

    iget-object v1, p0, Lcom/google/android/gms/internal/zznc$2$1;->zzTG:Lcom/google/android/gms/internal/zznc$2;

    iget-object v1, v1, Lcom/google/android/gms/internal/zznc$2;->zzTE:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzjj;->zzj(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error requesting an ad url"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzpk;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public synthetic zzd(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzjj;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zznc$2$1;->zzb(Lcom/google/android/gms/internal/zzjj;)V

    return-void
.end method
