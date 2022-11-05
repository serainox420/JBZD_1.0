.class Lcom/google/android/gms/internal/zzxn$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzxf$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzxn;->onSessionConnected(Lcom/google/android/gms/cast/framework/CastSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzatI:Lcom/google/android/gms/internal/zzxn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzxn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzxn$1;->zzatI:Lcom/google/android/gms/internal/zzxn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzc(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxn$1;->zzatI:Lcom/google/android/gms/internal/zzxn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzxn;->zza(Lcom/google/android/gms/internal/zzxn;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxn$1;->zzatI:Lcom/google/android/gms/internal/zzxn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzxn;->zza(Lcom/google/android/gms/internal/zzxn;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzxn$1;->zzatI:Lcom/google/android/gms/internal/zzxn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzxn;->zzb(Lcom/google/android/gms/internal/zzxn;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxn$1;->zzatI:Lcom/google/android/gms/internal/zzxn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzxn;->zzb(Lcom/google/android/gms/internal/zzxn;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method
