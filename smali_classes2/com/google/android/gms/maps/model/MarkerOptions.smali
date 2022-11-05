.class public final Lcom/google/android/gms/maps/model/MarkerOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/maps/model/MarkerOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlpha:F

.field private zzamJ:Ljava/lang/String;

.field private zzboL:Lcom/google/android/gms/maps/model/LatLng;

.field private zzbpC:Ljava/lang/String;

.field private zzbpD:Lcom/google/android/gms/maps/model/BitmapDescriptor;

.field private zzbpE:Z

.field private zzbpF:Z

.field private zzbpG:F

.field private zzbpH:F

.field private zzbpI:F

.field private zzbpi:F

.field private zzbpj:Z

.field private zzbps:F

.field private zzbpt:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/MarkerOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput v2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzbps:F

    iput v3, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzbpt:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzbpj:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzbpF:Z

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzbpG:F

    iput v2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzbpH:F

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzbpI:F

    iput v3, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->mAlpha:F

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;FFZZZFFFFF)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzbps:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzbpt:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzbpj:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzbpF:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzbpG:F

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzbpH:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzbpI:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->mAlpha:F

    iput-object p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzboL:Lcom/google/android/gms/maps/model/LatLng;

    iput-object p2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzamJ:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzbpC:Ljava/lang/String;

    if-nez p4, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzbpD:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    :goto_0
    iput p5, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzbps:F

    iput p6, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzbpt:F

    iput-boolean p7, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzbpE:Z

    iput-boolean p8, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzbpj:Z

    iput-boolean p9, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzbpF:Z

    iput p10, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzbpG:F

    iput p11, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzbpH:F

    iput p12, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzbpI:F

    move/from16 v0, p13

    iput v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->mAlpha:F

    move/from16 v0, p14

    iput v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzbpi:F

    return-void

    :cond_0
    new-instance v1, Lcom/google/android/gms/maps/model/BitmapDescriptor;

    invoke-static {p4}, Lcom/google/android/gms/dynamic/IObjectWrapper$zza;->zzcd(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/maps/model/BitmapDescriptor;-><init>(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    iput-object v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzbpD:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    goto :goto_0
.end method


# virtual methods
.method public alpha(F)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->mAlpha:F

    return-object p0
.end method

.method public anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzbps:F

    iput p2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzbpt:F

    return-object p0
.end method

.method public draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzbpE:Z

    return-object p0
.end method

.method public flat(Z)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzbpF:Z

    return-object p0
.end method

.method public getAlpha()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->mAlpha:F

    return v0
.end method

.method public getAnchorU()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzbps:F

    return v0
.end method

.method public getAnchorV()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzbpt:F

    return v0
.end method

.method public getIcon()Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzbpD:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    return-object v0
.end method

.method public getInfoWindowAnchorU()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzbpH:F

    return v0
.end method

.method public getInfoWindowAnchorV()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzbpI:F

    return v0
.end method

.method public getPosition()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzboL:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public getRotation()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzbpG:F

    return v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzbpC:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzamJ:Ljava/lang/String;

    return-object v0
.end method

.method public getZIndex()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzbpi:F

    return v0
.end method

.method public icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzbpD:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    return-object p0
.end method

.method public infoWindowAnchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzbpH:F

    iput p2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzbpI:F

    return-object p0
.end method

.method public isDraggable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzbpE:Z

    return v0
.end method

.method public isFlat()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzbpF:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzbpj:Z

    return v0
.end method

.method public position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "latlng cannot be null - a position is required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzboL:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

.method public rotation(F)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzbpG:F

    return-object p0
.end method

.method public snippet(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzbpC:Ljava/lang/String;

    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzamJ:Ljava/lang/String;

    return-object p0
.end method

.method public visible(Z)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzbpj:Z

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/zzh;->zza(Lcom/google/android/gms/maps/model/MarkerOptions;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zIndex(F)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzbpi:F

    return-object p0
.end method

.method zzJM()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzbpD:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzbpD:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptor;->zzJm()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method
