.class Lcom/google/android/gms/internal/zziy$zza$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zziy$zza;->onAdClosed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zziy$zza;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdb()Lcom/google/android/gms/internal/zziz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zziz;->zzgv()V

    return-void
.end method
