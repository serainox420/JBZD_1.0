.class Lcom/google/android/gms/ads/internal/overlay/zzp$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/overlay/zzp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation


# instance fields
.field public paddingBottom:I

.field public paddingLeft:I

.field public paddingRight:I

.field public paddingTop:I

.field public size:I


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzp$zza;->paddingLeft:I

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzp$zza;->paddingRight:I

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzp$zza;->paddingTop:I

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzp$zza;->paddingBottom:I

    const/16 v0, 0x20

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzp$zza;->size:I

    return-void
.end method
