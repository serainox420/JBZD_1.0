.class public final Lcom/google/android/gms/maps/model/PolylineOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/maps/model/PolylineOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mColor:I

.field private final zzbpL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private zzbpN:Z

.field private zzbpQ:Lcom/google/android/gms/maps/model/Cap;

.field private zzbpR:Lcom/google/android/gms/maps/model/Cap;

.field private zzbpS:I

.field private zzbpT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/PatternItem;",
            ">;"
        }
    .end annotation
.end field

.field private zzbpi:F

.field private zzbpj:Z

.field private zzbpk:Z

.field private zzbpp:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/zzl;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/zzl;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/PolylineOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzbpp:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->mColor:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzbpi:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzbpj:Z

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzbpN:Z

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzbpk:Z

    new-instance v0, Lcom/google/android/gms/maps/model/ButtCap;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/ButtCap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzbpQ:Lcom/google/android/gms/maps/model/Cap;

    new-instance v0, Lcom/google/android/gms/maps/model/ButtCap;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/ButtCap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzbpR:Lcom/google/android/gms/maps/model/Cap;

    iput v1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzbpS:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzbpT:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzbpL:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Ljava/util/List;FIFZZZLcom/google/android/gms/maps/model/Cap;Lcom/google/android/gms/maps/model/Cap;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List;",
            "FIFZZZ",
            "Lcom/google/android/gms/maps/model/Cap;",
            "Lcom/google/android/gms/maps/model/Cap;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/PatternItem;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzbpp:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->mColor:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzbpi:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzbpj:Z

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzbpN:Z

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzbpk:Z

    new-instance v0, Lcom/google/android/gms/maps/model/ButtCap;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/ButtCap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzbpQ:Lcom/google/android/gms/maps/model/Cap;

    new-instance v0, Lcom/google/android/gms/maps/model/ButtCap;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/ButtCap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzbpR:Lcom/google/android/gms/maps/model/Cap;

    iput v1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzbpS:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzbpT:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzbpL:Ljava/util/List;

    iput p2, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzbpp:F

    iput p3, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->mColor:I

    iput p4, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzbpi:F

    iput-boolean p5, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzbpj:Z

    iput-boolean p6, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzbpN:Z

    iput-boolean p7, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzbpk:Z

    if-eqz p8, :cond_0

    iput-object p8, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzbpQ:Lcom/google/android/gms/maps/model/Cap;

    :cond_0
    if-eqz p9, :cond_1

    iput-object p9, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzbpR:Lcom/google/android/gms/maps/model/Cap;

    :cond_1
    iput p10, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzbpS:I

    iput-object p11, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzbpT:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolylineOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzbpL:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public varargs add([Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolylineOptions;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzbpL:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolylineOptions;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)",
            "Lcom/google/android/gms/maps/model/PolylineOptions;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v2, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzbpL:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public clickable(Z)Lcom/google/android/gms/maps/model/PolylineOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzbpk:Z

    return-object p0
.end method

.method public color(I)Lcom/google/android/gms/maps/model/PolylineOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->mColor:I

    return-object p0
.end method

.method public endCap(Lcom/google/android/gms/maps/model/Cap;)Lcom/google/android/gms/maps/model/PolylineOptions;
    .locals 1

    const-string v0, "endCap must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/Cap;

    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzbpR:Lcom/google/android/gms/maps/model/Cap;

    return-object p0
.end method

.method public geodesic(Z)Lcom/google/android/gms/maps/model/PolylineOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzbpN:Z

    return-object p0
.end method

.method public getColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->mColor:I

    return v0
.end method

.method public getEndCap()Lcom/google/android/gms/maps/model/Cap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzbpR:Lcom/google/android/gms/maps/model/Cap;

    return-object v0
.end method

.method public getJointType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzbpS:I

    return v0
.end method

.method public getPattern()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/PatternItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzbpT:Ljava/util/List;

    return-object v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzbpL:Ljava/util/List;

    return-object v0
.end method

.method public getStartCap()Lcom/google/android/gms/maps/model/Cap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzbpQ:Lcom/google/android/gms/maps/model/Cap;

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzbpp:F

    return v0
.end method

.method public getZIndex()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzbpi:F

    return v0
.end method

.method public isClickable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzbpk:Z

    return v0
.end method

.method public isGeodesic()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzbpN:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzbpj:Z

    return v0
.end method

.method public jointType(I)Lcom/google/android/gms/maps/model/PolylineOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzbpS:I

    return-object p0
.end method

.method public pattern(Ljava/util/List;)Lcom/google/android/gms/maps/model/PolylineOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/PatternItem;",
            ">;)",
            "Lcom/google/android/gms/maps/model/PolylineOptions;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzbpT:Ljava/util/List;

    return-object p0
.end method

.method public startCap(Lcom/google/android/gms/maps/model/Cap;)Lcom/google/android/gms/maps/model/PolylineOptions;
    .locals 1

    const-string v0, "startCap must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/Cap;

    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzbpQ:Lcom/google/android/gms/maps/model/Cap;

    return-object p0
.end method

.method public visible(Z)Lcom/google/android/gms/maps/model/PolylineOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzbpj:Z

    return-object p0
.end method

.method public width(F)Lcom/google/android/gms/maps/model/PolylineOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzbpp:F

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/zzl;->zza(Lcom/google/android/gms/maps/model/PolylineOptions;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zIndex(F)Lcom/google/android/gms/maps/model/PolylineOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->zzbpi:F

    return-object p0
.end method
