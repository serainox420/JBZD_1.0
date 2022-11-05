.class public final Lcom/google/android/gms/internal/zzfp;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzfp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final backgroundColor:I

.field public final zzAH:I

.field public final zzAI:I

.field public final zzAJ:I

.field public final zzAK:I

.field public final zzAL:I

.field public final zzAM:I

.field public final zzAN:I

.field public final zzAO:Ljava/lang/String;

.field public final zzAP:I

.field public final zzAQ:Ljava/lang/String;

.field public final zzAR:I

.field public final zzAS:I

.field public final zzAT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzfq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzfp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIIIIIIILjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzfp;->zzAH:I

    iput p2, p0, Lcom/google/android/gms/internal/zzfp;->backgroundColor:I

    iput p3, p0, Lcom/google/android/gms/internal/zzfp;->zzAI:I

    iput p4, p0, Lcom/google/android/gms/internal/zzfp;->zzAJ:I

    iput p5, p0, Lcom/google/android/gms/internal/zzfp;->zzAK:I

    iput p6, p0, Lcom/google/android/gms/internal/zzfp;->zzAL:I

    iput p7, p0, Lcom/google/android/gms/internal/zzfp;->zzAM:I

    iput p8, p0, Lcom/google/android/gms/internal/zzfp;->zzAN:I

    iput-object p9, p0, Lcom/google/android/gms/internal/zzfp;->zzAO:Ljava/lang/String;

    iput p10, p0, Lcom/google/android/gms/internal/zzfp;->zzAP:I

    iput-object p11, p0, Lcom/google/android/gms/internal/zzfp;->zzAQ:Ljava/lang/String;

    iput p12, p0, Lcom/google/android/gms/internal/zzfp;->zzAR:I

    iput p13, p0, Lcom/google/android/gms/internal/zzfp;->zzAS:I

    iput-object p14, p0, Lcom/google/android/gms/internal/zzfp;->zzAT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/search/SearchAdRequest;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getAnchorTextColor()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzfp;->zzAH:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getBackgroundColor()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzfp;->backgroundColor:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getBackgroundGradientBottom()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzfp;->zzAI:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getBackgroundGradientTop()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzfp;->zzAJ:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getBorderColor()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzfp;->zzAK:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getBorderThickness()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzfp;->zzAL:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getBorderType()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzfp;->zzAM:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getCallButtonColor()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzfp;->zzAN:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getCustomChannels()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfp;->zzAO:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getDescriptionTextColor()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzfp;->zzAP:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getFontFace()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfp;->zzAQ:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getHeaderTextColor()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzfp;->zzAR:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getHeaderTextSize()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzfp;->zzAS:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getQuery()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfp;->zzAT:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzfq;->zza(Lcom/google/android/gms/internal/zzfp;Landroid/os/Parcel;I)V

    return-void
.end method
