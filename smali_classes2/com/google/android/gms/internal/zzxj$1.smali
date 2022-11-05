.class Lcom/google/android/gms/internal/zzxj$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzxf$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzxj;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/internal/zzxe;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzatp:Lcom/google/android/gms/internal/zzxj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzxj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzxj$1;->zzatp:Lcom/google/android/gms/internal/zzxj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzc(Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/internal/zzxj;->zzd(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxj$1;->zzatp:Lcom/google/android/gms/internal/zzxj;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/zzxj;->zza(Lcom/google/android/gms/internal/zzxj;Landroid/graphics/Bitmap;I)V

    return-void
.end method
