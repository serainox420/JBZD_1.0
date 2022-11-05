.class Lcom/google/android/gms/internal/zzps$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzps$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzYa:Lcom/google/android/gms/internal/zzps$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzps$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzps$1$1;->zzYa:Lcom/google/android/gms/internal/zzps$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzps$1$1;->zzYa:Lcom/google/android/gms/internal/zzps$1;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzps$1;->zztf:Landroid/content/Context;

    const-string v2, "https://support.google.com/dfp_premium/answer/7160685#push"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzpo;->zza(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method
