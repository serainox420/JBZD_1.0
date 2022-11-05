.class Lcom/google/android/gms/internal/zzxm$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzxf$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzxm;->onSessionConnected(Lcom/google/android/gms/cast/framework/CastSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzatF:Lcom/google/android/gms/internal/zzxm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzxm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzxm$1;->zzatF:Lcom/google/android/gms/internal/zzxm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzc(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxm$1;->zzatF:Lcom/google/android/gms/internal/zzxm;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzxm;->zza(Lcom/google/android/gms/internal/zzxm;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
