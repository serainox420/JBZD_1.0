.class public final enum Lcom/apprupt/sdk/adview/Orientation;
.super Ljava/lang/Enum;
.source "Orientation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/apprupt/sdk/adview/Orientation;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum LANDSCAPE:Lcom/apprupt/sdk/adview/Orientation;

.field public static final enum NONE:Lcom/apprupt/sdk/adview/Orientation;

.field public static final enum PORTRAIT:Lcom/apprupt/sdk/adview/Orientation;

.field private static final synthetic a:[Lcom/apprupt/sdk/adview/Orientation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/apprupt/sdk/adview/Orientation;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/apprupt/sdk/adview/Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/adview/Orientation;->NONE:Lcom/apprupt/sdk/adview/Orientation;

    new-instance v0, Lcom/apprupt/sdk/adview/Orientation;

    const-string v1, "PORTRAIT"

    invoke-direct {v0, v1, v3}, Lcom/apprupt/sdk/adview/Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/adview/Orientation;->PORTRAIT:Lcom/apprupt/sdk/adview/Orientation;

    new-instance v0, Lcom/apprupt/sdk/adview/Orientation;

    const-string v1, "LANDSCAPE"

    invoke-direct {v0, v1, v4}, Lcom/apprupt/sdk/adview/Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/adview/Orientation;->LANDSCAPE:Lcom/apprupt/sdk/adview/Orientation;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/apprupt/sdk/adview/Orientation;

    sget-object v1, Lcom/apprupt/sdk/adview/Orientation;->NONE:Lcom/apprupt/sdk/adview/Orientation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/apprupt/sdk/adview/Orientation;->PORTRAIT:Lcom/apprupt/sdk/adview/Orientation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/apprupt/sdk/adview/Orientation;->LANDSCAPE:Lcom/apprupt/sdk/adview/Orientation;

    aput-object v1, v0, v4

    sput-object v0, Lcom/apprupt/sdk/adview/Orientation;->a:[Lcom/apprupt/sdk/adview/Orientation;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apprupt/sdk/adview/Orientation;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/apprupt/sdk/adview/Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/adview/Orientation;

    return-object v0
.end method

.method public static values()[Lcom/apprupt/sdk/adview/Orientation;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/apprupt/sdk/adview/Orientation;->a:[Lcom/apprupt/sdk/adview/Orientation;

    invoke-virtual {v0}, [Lcom/apprupt/sdk/adview/Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apprupt/sdk/adview/Orientation;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 11
    sget-object v0, Lcom/apprupt/sdk/adview/Orientation$1;->a:[I

    invoke-virtual {p0}, Lcom/apprupt/sdk/adview/Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 17
    const-string v0, "none"

    :goto_0
    return-object v0

    .line 13
    :pswitch_0
    const-string v0, "portrait"

    goto :goto_0

    .line 15
    :pswitch_1
    const-string v0, "landscape"

    goto :goto_0

    .line 11
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
