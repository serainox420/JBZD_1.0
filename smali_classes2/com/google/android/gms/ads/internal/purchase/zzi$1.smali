.class Lcom/google/android/gms/ads/internal/purchase/zzi$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/purchase/zzi;->zzv(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zztf:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/purchase/zzi;Landroid/content/Context;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/purchase/zzi$1;->zztf:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Lcom/google/android/gms/ads/internal/purchase/zzi$1$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/purchase/zzi$1$1;-><init>(Lcom/google/android/gms/ads/internal/purchase/zzi$1;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.vending"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/gms/common/stats/zza;->zzyJ()Lcom/google/android/gms/common/stats/zza;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/purchase/zzi$1;->zztf:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v0, v4}, Lcom/google/android/gms/common/stats/zza;->zza(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method
