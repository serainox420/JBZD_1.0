.class public Lcom/facebook/ads/AdSize;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final BANNER_320_50:Lcom/facebook/ads/AdSize;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BANNER_HEIGHT_50:Lcom/facebook/ads/AdSize;

.field public static final BANNER_HEIGHT_90:Lcom/facebook/ads/AdSize;

.field public static final INTERSTITIAL:Lcom/facebook/ads/AdSize;

.field public static final RECTANGLE_HEIGHT_250:Lcom/facebook/ads/AdSize;


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0x32

    const/4 v3, 0x0

    const/4 v2, -0x1

    new-instance v0, Lcom/facebook/ads/AdSize;

    const/16 v1, 0x140

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/AdSize;-><init>(II)V

    sput-object v0, Lcom/facebook/ads/AdSize;->BANNER_320_50:Lcom/facebook/ads/AdSize;

    new-instance v0, Lcom/facebook/ads/AdSize;

    invoke-direct {v0, v3, v3}, Lcom/facebook/ads/AdSize;-><init>(II)V

    sput-object v0, Lcom/facebook/ads/AdSize;->INTERSTITIAL:Lcom/facebook/ads/AdSize;

    new-instance v0, Lcom/facebook/ads/AdSize;

    invoke-direct {v0, v2, v4}, Lcom/facebook/ads/AdSize;-><init>(II)V

    sput-object v0, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_50:Lcom/facebook/ads/AdSize;

    new-instance v0, Lcom/facebook/ads/AdSize;

    const/16 v1, 0x5a

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/AdSize;-><init>(II)V

    sput-object v0, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_90:Lcom/facebook/ads/AdSize;

    new-instance v0, Lcom/facebook/ads/AdSize;

    const/16 v1, 0xfa

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/AdSize;-><init>(II)V

    sput-object v0, Lcom/facebook/ads/AdSize;->RECTANGLE_HEIGHT_250:Lcom/facebook/ads/AdSize;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/facebook/ads/AdSize;->a:I

    iput p2, p0, Lcom/facebook/ads/AdSize;->b:I

    return-void
.end method

.method public static fromWidthAndHeight(II)Lcom/facebook/ads/AdSize;
    .locals 1

    sget-object v0, Lcom/facebook/ads/AdSize;->INTERSTITIAL:Lcom/facebook/ads/AdSize;

    iget v0, v0, Lcom/facebook/ads/AdSize;->b:I

    if-ne v0, p1, :cond_0

    sget-object v0, Lcom/facebook/ads/AdSize;->INTERSTITIAL:Lcom/facebook/ads/AdSize;

    iget v0, v0, Lcom/facebook/ads/AdSize;->a:I

    if-ne v0, p0, :cond_0

    sget-object v0, Lcom/facebook/ads/AdSize;->INTERSTITIAL:Lcom/facebook/ads/AdSize;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/facebook/ads/AdSize;->BANNER_320_50:Lcom/facebook/ads/AdSize;

    iget v0, v0, Lcom/facebook/ads/AdSize;->b:I

    if-ne v0, p1, :cond_1

    sget-object v0, Lcom/facebook/ads/AdSize;->BANNER_320_50:Lcom/facebook/ads/AdSize;

    iget v0, v0, Lcom/facebook/ads/AdSize;->a:I

    if-ne v0, p0, :cond_1

    sget-object v0, Lcom/facebook/ads/AdSize;->BANNER_320_50:Lcom/facebook/ads/AdSize;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_50:Lcom/facebook/ads/AdSize;

    iget v0, v0, Lcom/facebook/ads/AdSize;->b:I

    if-ne v0, p1, :cond_2

    sget-object v0, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_50:Lcom/facebook/ads/AdSize;

    iget v0, v0, Lcom/facebook/ads/AdSize;->a:I

    if-ne v0, p0, :cond_2

    sget-object v0, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_50:Lcom/facebook/ads/AdSize;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_90:Lcom/facebook/ads/AdSize;

    iget v0, v0, Lcom/facebook/ads/AdSize;->b:I

    if-ne v0, p1, :cond_3

    sget-object v0, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_90:Lcom/facebook/ads/AdSize;

    iget v0, v0, Lcom/facebook/ads/AdSize;->a:I

    if-ne v0, p0, :cond_3

    sget-object v0, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_90:Lcom/facebook/ads/AdSize;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/facebook/ads/AdSize;->RECTANGLE_HEIGHT_250:Lcom/facebook/ads/AdSize;

    iget v0, v0, Lcom/facebook/ads/AdSize;->b:I

    if-ne v0, p1, :cond_4

    sget-object v0, Lcom/facebook/ads/AdSize;->RECTANGLE_HEIGHT_250:Lcom/facebook/ads/AdSize;

    iget v0, v0, Lcom/facebook/ads/AdSize;->a:I

    if-ne v0, p0, :cond_4

    sget-object v0, Lcom/facebook/ads/AdSize;->RECTANGLE_HEIGHT_250:Lcom/facebook/ads/AdSize;

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/facebook/ads/AdSize;

    iget v2, p0, Lcom/facebook/ads/AdSize;->a:I

    iget v3, p1, Lcom/facebook/ads/AdSize;->a:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/facebook/ads/AdSize;->b:I

    iget v3, p1, Lcom/facebook/ads/AdSize;->b:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/AdSize;->b:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/AdSize;->a:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/facebook/ads/AdSize;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/facebook/ads/AdSize;->b:I

    add-int/2addr v0, v1

    return v0
.end method
