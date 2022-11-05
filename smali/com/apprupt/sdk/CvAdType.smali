.class final enum Lcom/apprupt/sdk/CvAdType;
.super Ljava/lang/Enum;
.source "CvAdType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/apprupt/sdk/CvAdType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/apprupt/sdk/CvAdType;

.field public static final enum b:Lcom/apprupt/sdk/CvAdType;

.field public static final enum c:Lcom/apprupt/sdk/CvAdType;

.field public static final enum d:Lcom/apprupt/sdk/CvAdType;

.field public static final enum e:Lcom/apprupt/sdk/CvAdType;

.field public static final enum f:Lcom/apprupt/sdk/CvAdType;

.field private static final synthetic g:[Lcom/apprupt/sdk/CvAdType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/apprupt/sdk/CvAdType;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/apprupt/sdk/CvAdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/CvAdType;->a:Lcom/apprupt/sdk/CvAdType;

    new-instance v0, Lcom/apprupt/sdk/CvAdType;

    const-string v1, "CLIPKIT"

    invoke-direct {v0, v1, v4}, Lcom/apprupt/sdk/CvAdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/CvAdType;->b:Lcom/apprupt/sdk/CvAdType;

    new-instance v0, Lcom/apprupt/sdk/CvAdType;

    const-string v1, "IN_PLACE"

    invoke-direct {v0, v1, v5}, Lcom/apprupt/sdk/CvAdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/CvAdType;->c:Lcom/apprupt/sdk/CvAdType;

    new-instance v0, Lcom/apprupt/sdk/CvAdType;

    const-string v1, "AD_COLONY_INTERSTITIAL"

    invoke-direct {v0, v1, v6}, Lcom/apprupt/sdk/CvAdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/CvAdType;->d:Lcom/apprupt/sdk/CvAdType;

    new-instance v0, Lcom/apprupt/sdk/CvAdType;

    const-string v1, "AD_COLONY_INLINE"

    invoke-direct {v0, v1, v7}, Lcom/apprupt/sdk/CvAdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/CvAdType;->e:Lcom/apprupt/sdk/CvAdType;

    new-instance v0, Lcom/apprupt/sdk/CvAdType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/apprupt/sdk/CvAdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/CvAdType;->f:Lcom/apprupt/sdk/CvAdType;

    .line 10
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/apprupt/sdk/CvAdType;

    sget-object v1, Lcom/apprupt/sdk/CvAdType;->a:Lcom/apprupt/sdk/CvAdType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/apprupt/sdk/CvAdType;->b:Lcom/apprupt/sdk/CvAdType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/apprupt/sdk/CvAdType;->c:Lcom/apprupt/sdk/CvAdType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/apprupt/sdk/CvAdType;->d:Lcom/apprupt/sdk/CvAdType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/apprupt/sdk/CvAdType;->e:Lcom/apprupt/sdk/CvAdType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/apprupt/sdk/CvAdType;->f:Lcom/apprupt/sdk/CvAdType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/apprupt/sdk/CvAdType;->g:[Lcom/apprupt/sdk/CvAdType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/apprupt/sdk/CvAdType;
    .locals 1

    .prologue
    .line 39
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "normal"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "none"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    :cond_0
    sget-object v0, Lcom/apprupt/sdk/CvAdType;->a:Lcom/apprupt/sdk/CvAdType;

    .line 46
    :goto_0
    return-object v0

    .line 42
    :cond_1
    const-string v0, "inplace"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/apprupt/sdk/CvAdType;->c:Lcom/apprupt/sdk/CvAdType;

    goto :goto_0

    .line 43
    :cond_2
    const-string v0, "clipkit"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/apprupt/sdk/CvAdType;->b:Lcom/apprupt/sdk/CvAdType;

    goto :goto_0

    .line 44
    :cond_3
    const-string v0, "ac-inline"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/apprupt/sdk/CvAdType;->e:Lcom/apprupt/sdk/CvAdType;

    goto :goto_0

    .line 45
    :cond_4
    const-string v0, "ac-interstitial"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/apprupt/sdk/CvAdType;->d:Lcom/apprupt/sdk/CvAdType;

    goto :goto_0

    .line 46
    :cond_5
    sget-object v0, Lcom/apprupt/sdk/CvAdType;->f:Lcom/apprupt/sdk/CvAdType;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apprupt/sdk/CvAdType;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/apprupt/sdk/CvAdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/CvAdType;

    return-object v0
.end method

.method public static values()[Lcom/apprupt/sdk/CvAdType;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/apprupt/sdk/CvAdType;->g:[Lcom/apprupt/sdk/CvAdType;

    invoke-virtual {v0}, [Lcom/apprupt/sdk/CvAdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apprupt/sdk/CvAdType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 23
    sget-object v0, Lcom/apprupt/sdk/CvAdType$1;->a:[I

    invoke-virtual {p0}, Lcom/apprupt/sdk/CvAdType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 35
    const-string v0, "normal"

    :goto_0
    return-object v0

    .line 25
    :pswitch_0
    const-string v0, "inplace"

    goto :goto_0

    .line 27
    :pswitch_1
    const-string v0, "clipkit"

    goto :goto_0

    .line 29
    :pswitch_2
    const-string v0, "ac-inline"

    goto :goto_0

    .line 31
    :pswitch_3
    const-string v0, "ac-interstitial"

    goto :goto_0

    .line 33
    :pswitch_4
    const-string v0, "unknown"

    goto :goto_0

    .line 23
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
