.class Lcom/google/android/gms/internal/zzji$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzji;->zza(Lcom/google/android/gms/internal/zzaw;)Lcom/google/android/gms/internal/zzji$zzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzJP:Lcom/google/android/gms/internal/zzaw;

.field final synthetic zzJQ:Lcom/google/android/gms/internal/zzji$zzd;

.field final synthetic zzJR:Lcom/google/android/gms/internal/zzji;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzji;Lcom/google/android/gms/internal/zzaw;Lcom/google/android/gms/internal/zzji$zzd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzji$1;->zzJR:Lcom/google/android/gms/internal/zzji;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzji$1;->zzJP:Lcom/google/android/gms/internal/zzaw;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzji$1;->zzJQ:Lcom/google/android/gms/internal/zzji$zzd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzji$1;->zzJR:Lcom/google/android/gms/internal/zzji;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzji$1;->zzJR:Lcom/google/android/gms/internal/zzji;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzji;->zza(Lcom/google/android/gms/internal/zzji;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzji$1;->zzJR:Lcom/google/android/gms/internal/zzji;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzji;->zzb(Lcom/google/android/gms/internal/zzji;)Lcom/google/android/gms/internal/zzqh;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzji$1;->zzJP:Lcom/google/android/gms/internal/zzaw;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzji;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/zzaw;)Lcom/google/android/gms/internal/zzjf;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzji$1$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzji$1$1;-><init>(Lcom/google/android/gms/internal/zzji$1;Lcom/google/android/gms/internal/zzjf;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzjf;->zza(Lcom/google/android/gms/internal/zzjf$zza;)V

    const-string v1, "/jsLoaded"

    new-instance v2, Lcom/google/android/gms/internal/zzji$1$2;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzji$1$2;-><init>(Lcom/google/android/gms/internal/zzji$1;Lcom/google/android/gms/internal/zzjf;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzjf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    new-instance v1, Lcom/google/android/gms/internal/zzqa;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzqa;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/zzji$1$3;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/gms/internal/zzji$1$3;-><init>(Lcom/google/android/gms/internal/zzji$1;Lcom/google/android/gms/internal/zzjf;Lcom/google/android/gms/internal/zzqa;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzqa;->set(Ljava/lang/Object;)V

    const-string v1, "/requestReload"

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzjf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzji$1;->zzJR:Lcom/google/android/gms/internal/zzji;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzji;->zzf(Lcom/google/android/gms/internal/zzji;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".js"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzji$1;->zzJR:Lcom/google/android/gms/internal/zzji;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzji;->zzf(Lcom/google/android/gms/internal/zzji;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzjf;->zzam(Ljava/lang/String;)V

    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzji$1$4;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzji$1$4;-><init>(Lcom/google/android/gms/internal/zzji$1;Lcom/google/android/gms/internal/zzjf;)V

    sget v0, Lcom/google/android/gms/internal/zzji$zza;->zzJZ:I

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzji$1;->zzJR:Lcom/google/android/gms/internal/zzji;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzji;->zzf(Lcom/google/android/gms/internal/zzji;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "<html>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzji$1;->zzJR:Lcom/google/android/gms/internal/zzji;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzji;->zzf(Lcom/google/android/gms/internal/zzji;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzjf;->zzao(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzji$1;->zzJR:Lcom/google/android/gms/internal/zzji;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzji;->zzf(Lcom/google/android/gms/internal/zzji;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzjf;->zzan(Ljava/lang/String;)V

    goto :goto_0
.end method
