.class public final enum Lcom/intentsoftware/addapptr/BannerSize;
.super Ljava/lang/Enum;
.source "BannerSize.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/intentsoftware/addapptr/BannerSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/intentsoftware/addapptr/BannerSize;

.field public static final enum Banner300x250:Lcom/intentsoftware/addapptr/BannerSize;

.field public static final enum Banner320x100:Lcom/intentsoftware/addapptr/BannerSize;

.field public static final enum Banner320x150:Lcom/intentsoftware/addapptr/BannerSize;

.field public static final enum Banner320x53:Lcom/intentsoftware/addapptr/BannerSize;

.field public static final enum Banner320x75:Lcom/intentsoftware/addapptr/BannerSize;

.field public static final enum Banner468x60:Lcom/intentsoftware/addapptr/BannerSize;

.field public static final enum Banner768x90:Lcom/intentsoftware/addapptr/BannerSize;

.field public static final enum MutlipleSizes:Lcom/intentsoftware/addapptr/BannerSize;


# instance fields
.field private final configName:Ljava/lang/String;

.field private final height:I

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/4 v15, 0x3

    const/4 v14, 0x2

    const/4 v7, 0x1

    const/16 v4, 0x140

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/intentsoftware/addapptr/BannerSize;

    const-string v1, "Banner320x53"

    const-string v3, "320x53"

    const/16 v5, 0x35

    invoke-direct/range {v0 .. v5}, Lcom/intentsoftware/addapptr/BannerSize;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/intentsoftware/addapptr/BannerSize;->Banner320x53:Lcom/intentsoftware/addapptr/BannerSize;

    .line 5
    new-instance v5, Lcom/intentsoftware/addapptr/BannerSize;

    const-string v6, "Banner768x90"

    const-string v8, "768x90"

    const/16 v9, 0x300

    const/16 v10, 0x5a

    invoke-direct/range {v5 .. v10}, Lcom/intentsoftware/addapptr/BannerSize;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v5, Lcom/intentsoftware/addapptr/BannerSize;->Banner768x90:Lcom/intentsoftware/addapptr/BannerSize;

    .line 6
    new-instance v8, Lcom/intentsoftware/addapptr/BannerSize;

    const-string v9, "Banner300x250"

    const-string v11, "300x250"

    const/16 v12, 0x12c

    const/16 v13, 0xfa

    move v10, v14

    invoke-direct/range {v8 .. v13}, Lcom/intentsoftware/addapptr/BannerSize;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v8, Lcom/intentsoftware/addapptr/BannerSize;->Banner300x250:Lcom/intentsoftware/addapptr/BannerSize;

    .line 7
    new-instance v8, Lcom/intentsoftware/addapptr/BannerSize;

    const-string v9, "Banner468x60"

    const-string v11, "468x60"

    const/16 v12, 0x1d4

    const/16 v13, 0x3c

    move v10, v15

    invoke-direct/range {v8 .. v13}, Lcom/intentsoftware/addapptr/BannerSize;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v8, Lcom/intentsoftware/addapptr/BannerSize;->Banner468x60:Lcom/intentsoftware/addapptr/BannerSize;

    .line 8
    new-instance v8, Lcom/intentsoftware/addapptr/BannerSize;

    const-string v9, "MutlipleSizes"

    const/4 v10, 0x4

    const-string v11, "Multiple-Sizes"

    move v12, v2

    move v13, v2

    invoke-direct/range {v8 .. v13}, Lcom/intentsoftware/addapptr/BannerSize;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v8, Lcom/intentsoftware/addapptr/BannerSize;->MutlipleSizes:Lcom/intentsoftware/addapptr/BannerSize;

    .line 9
    new-instance v8, Lcom/intentsoftware/addapptr/BannerSize;

    const-string v9, "Banner320x75"

    const/4 v10, 0x5

    const-string v11, "320x75"

    const/16 v13, 0x4b

    move v12, v4

    invoke-direct/range {v8 .. v13}, Lcom/intentsoftware/addapptr/BannerSize;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v8, Lcom/intentsoftware/addapptr/BannerSize;->Banner320x75:Lcom/intentsoftware/addapptr/BannerSize;

    .line 10
    new-instance v8, Lcom/intentsoftware/addapptr/BannerSize;

    const-string v9, "Banner320x100"

    const/4 v10, 0x6

    const-string v11, "320x100"

    const/16 v13, 0x64

    move v12, v4

    invoke-direct/range {v8 .. v13}, Lcom/intentsoftware/addapptr/BannerSize;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v8, Lcom/intentsoftware/addapptr/BannerSize;->Banner320x100:Lcom/intentsoftware/addapptr/BannerSize;

    .line 11
    new-instance v8, Lcom/intentsoftware/addapptr/BannerSize;

    const-string v9, "Banner320x150"

    const/4 v10, 0x7

    const-string v11, "320x150"

    const/16 v13, 0x96

    move v12, v4

    invoke-direct/range {v8 .. v13}, Lcom/intentsoftware/addapptr/BannerSize;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v8, Lcom/intentsoftware/addapptr/BannerSize;->Banner320x150:Lcom/intentsoftware/addapptr/BannerSize;

    .line 3
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/intentsoftware/addapptr/BannerSize;

    sget-object v1, Lcom/intentsoftware/addapptr/BannerSize;->Banner320x53:Lcom/intentsoftware/addapptr/BannerSize;

    aput-object v1, v0, v2

    sget-object v1, Lcom/intentsoftware/addapptr/BannerSize;->Banner768x90:Lcom/intentsoftware/addapptr/BannerSize;

    aput-object v1, v0, v7

    sget-object v1, Lcom/intentsoftware/addapptr/BannerSize;->Banner300x250:Lcom/intentsoftware/addapptr/BannerSize;

    aput-object v1, v0, v14

    sget-object v1, Lcom/intentsoftware/addapptr/BannerSize;->Banner468x60:Lcom/intentsoftware/addapptr/BannerSize;

    aput-object v1, v0, v15

    const/4 v1, 0x4

    sget-object v2, Lcom/intentsoftware/addapptr/BannerSize;->MutlipleSizes:Lcom/intentsoftware/addapptr/BannerSize;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/intentsoftware/addapptr/BannerSize;->Banner320x75:Lcom/intentsoftware/addapptr/BannerSize;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/intentsoftware/addapptr/BannerSize;->Banner320x100:Lcom/intentsoftware/addapptr/BannerSize;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/intentsoftware/addapptr/BannerSize;->Banner320x150:Lcom/intentsoftware/addapptr/BannerSize;

    aput-object v2, v0, v1

    sput-object v0, Lcom/intentsoftware/addapptr/BannerSize;->$VALUES:[Lcom/intentsoftware/addapptr/BannerSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-object p3, p0, Lcom/intentsoftware/addapptr/BannerSize;->configName:Ljava/lang/String;

    .line 27
    iput p4, p0, Lcom/intentsoftware/addapptr/BannerSize;->width:I

    .line 28
    iput p5, p0, Lcom/intentsoftware/addapptr/BannerSize;->height:I

    .line 29
    return-void
.end method

.method public static fromServerConfigName(Ljava/lang/String;)Lcom/intentsoftware/addapptr/BannerSize;
    .locals 5

    .prologue
    .line 32
    invoke-static {}, Lcom/intentsoftware/addapptr/BannerSize;->values()[Lcom/intentsoftware/addapptr/BannerSize;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 33
    iget-object v4, v0, Lcom/intentsoftware/addapptr/BannerSize;->configName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 37
    :goto_1
    return-object v0

    .line 32
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 37
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/intentsoftware/addapptr/BannerSize;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/intentsoftware/addapptr/BannerSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/BannerSize;

    return-object v0
.end method

.method public static values()[Lcom/intentsoftware/addapptr/BannerSize;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/intentsoftware/addapptr/BannerSize;->$VALUES:[Lcom/intentsoftware/addapptr/BannerSize;

    invoke-virtual {v0}, [Lcom/intentsoftware/addapptr/BannerSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/intentsoftware/addapptr/BannerSize;

    return-object v0
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/intentsoftware/addapptr/BannerSize;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/intentsoftware/addapptr/BannerSize;->width:I

    return v0
.end method
