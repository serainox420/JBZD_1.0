.class final Lcom/google/android/gms/internal/zzpm$2;
.super Lcom/google/android/gms/internal/zzpm$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzpm;->zzq(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzXl:Ljava/lang/String;

.field final synthetic zztf:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpm$2;->zztf:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzpm$2;->zzXl:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzpm$zza;-><init>(Lcom/google/android/gms/internal/zzpm$1;)V

    return-void
.end method


# virtual methods
.method public zzco()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpm$2;->zztf:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpm;->zzn(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "content_vertical_hashes"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpm$2;->zzXl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
