.class Lcom/google/android/gms/internal/zzhb$zza$5;
.super Lcom/google/android/gms/internal/zzlw$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzhb$zza;->zzgh()Lcom/google/android/gms/internal/zzlw$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzGX:Lcom/google/android/gms/internal/zzhb$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzhb$zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhb$zza$5;->zzGX:Lcom/google/android/gms/internal/zzhb$zza;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlw$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zze(Lcom/google/android/gms/internal/zzjj;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhb$zza$5;->zzGX:Lcom/google/android/gms/internal/zzhb$zza;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhb$zza;->zza(Lcom/google/android/gms/internal/zzhb$zza;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqw;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "/loadHtml"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhb$zza$5;->zzGX:Lcom/google/android/gms/internal/zzhb$zza;

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/zzhb$zza;->zza(Lcom/google/android/gms/internal/zzhb$zza;Lcom/google/android/gms/internal/zzjj;)Lcom/google/android/gms/internal/zzid;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/zzjj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    const-string v1, "/showOverlay"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhb$zza$5;->zzGX:Lcom/google/android/gms/internal/zzhb$zza;

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/zzhb$zza;->zzb(Lcom/google/android/gms/internal/zzhb$zza;Lcom/google/android/gms/internal/zzjj;)Lcom/google/android/gms/internal/zzid;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/zzjj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    const-string v1, "/hideOverlay"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhb$zza$5;->zzGX:Lcom/google/android/gms/internal/zzhb$zza;

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/zzhb$zza;->zzc(Lcom/google/android/gms/internal/zzhb$zza;Lcom/google/android/gms/internal/zzjj;)Lcom/google/android/gms/internal/zzid;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/zzjj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqw;->zzlv()Lcom/google/android/gms/internal/zzqx;

    move-result-object v0

    const-string v1, "/sendMessageToSdk"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhb$zza$5;->zzGX:Lcom/google/android/gms/internal/zzhb$zza;

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/zzhb$zza;->zzd(Lcom/google/android/gms/internal/zzhb$zza;Lcom/google/android/gms/internal/zzjj;)Lcom/google/android/gms/internal/zzid;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzqx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    goto :goto_0
.end method
