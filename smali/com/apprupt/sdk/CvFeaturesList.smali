.class Lcom/apprupt/sdk/CvFeaturesList;
.super Ljava/lang/Object;
.source "CvFeaturesList.java"


# static fields
.field static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/apprupt/sdk/CvFeaturesList;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x3f
        0x8
        0x0
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    new-array v0, v1, [I

    new-array v1, v1, [I

    invoke-static {v0, v1, p0}, Lcom/apprupt/sdk/CvFeaturesList;->a([I[ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a([I[I)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 75
    sget-object v0, Lcom/apprupt/sdk/CvFeaturesList;->a:[I

    array-length v0, v0

    new-array v2, v0, [I

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 77
    :goto_0
    sget-object v4, Lcom/apprupt/sdk/CvFeaturesList;->a:[I

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 78
    sget-object v4, Lcom/apprupt/sdk/CvFeaturesList;->a:[I

    aget v4, v4, v0

    aput v4, v2, v0

    .line 79
    if-eqz p0, :cond_0

    array-length v4, p0

    if-ge v0, v4, :cond_0

    .line 80
    aget v4, v2, v0

    aget v5, p0, v0

    or-int/2addr v4, v5

    aput v4, v2, v0

    .line 82
    :cond_0
    if-eqz p1, :cond_1

    array-length v4, p1

    if-ge v0, v4, :cond_1

    .line 83
    aget v4, v2, v0

    aget v5, p1, v0

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    aput v4, v2, v0

    .line 85
    :cond_1
    const-string v4, "%02x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aget v6, v2, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a([I[ILandroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 61
    sget-object v0, Lcom/apprupt/sdk/CvFeaturesList;->a:[I

    array-length v0, v0

    new-array v3, v0, [I

    move v0, v1

    .line 63
    :goto_0
    sget-object v2, Lcom/apprupt/sdk/CvFeaturesList;->a:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 64
    if-eqz p1, :cond_0

    array-length v2, p1

    if-ge v0, v2, :cond_0

    aget v2, p1, v0

    :goto_1
    aput v2, v3, v0

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 64
    goto :goto_1

    .line 66
    :cond_1
    if-eqz p2, :cond_2

    .line 67
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.WRITE_CALENDAR"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 68
    aget v0, v3, v1

    or-int/lit8 v0, v0, 0x20

    aput v0, v3, v1

    .line 71
    :cond_2
    invoke-static {p0, v3}, Lcom/apprupt/sdk/CvFeaturesList;->a([I[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
