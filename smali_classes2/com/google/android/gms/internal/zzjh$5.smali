.class Lcom/google/android/gms/internal/zzjh$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzjh;->zzan(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzJB:Ljava/lang/String;

.field final synthetic zzJG:Lcom/google/android/gms/internal/zzjh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzjh;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjh$5;->zzJG:Lcom/google/android/gms/internal/zzjh;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzjh$5;->zzJB:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjh$5;->zzJG:Lcom/google/android/gms/internal/zzjh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzjh;->zza(Lcom/google/android/gms/internal/zzjh;)Lcom/google/android/gms/internal/zzqw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjh$5;->zzJB:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzqw;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
