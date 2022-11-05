.class public final enum Lcom/apprupt/sdk/adview/CloseButtonPosition;
.super Ljava/lang/Enum;
.source "CloseButtonPosition.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/apprupt/sdk/adview/CloseButtonPosition;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BOTTOM_CENTER:Lcom/apprupt/sdk/adview/CloseButtonPosition;

.field public static final enum BOTTOM_LEFT:Lcom/apprupt/sdk/adview/CloseButtonPosition;

.field public static final enum BOTTOM_RIGHT:Lcom/apprupt/sdk/adview/CloseButtonPosition;

.field public static final enum CENTER:Lcom/apprupt/sdk/adview/CloseButtonPosition;

.field public static final enum HIDDEN:Lcom/apprupt/sdk/adview/CloseButtonPosition;

.field public static final enum TOP_CENTER:Lcom/apprupt/sdk/adview/CloseButtonPosition;

.field public static final enum TOP_LEFT:Lcom/apprupt/sdk/adview/CloseButtonPosition;

.field public static final enum TOP_RIGHT:Lcom/apprupt/sdk/adview/CloseButtonPosition;

.field private static final synthetic a:[Lcom/apprupt/sdk/adview/CloseButtonPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/apprupt/sdk/adview/CloseButtonPosition;

    const-string v1, "HIDDEN"

    invoke-direct {v0, v1, v3}, Lcom/apprupt/sdk/adview/CloseButtonPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/adview/CloseButtonPosition;->HIDDEN:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    new-instance v0, Lcom/apprupt/sdk/adview/CloseButtonPosition;

    const-string v1, "TOP_RIGHT"

    invoke-direct {v0, v1, v4}, Lcom/apprupt/sdk/adview/CloseButtonPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/adview/CloseButtonPosition;->TOP_RIGHT:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    new-instance v0, Lcom/apprupt/sdk/adview/CloseButtonPosition;

    const-string v1, "BOTTOM_RIGHT"

    invoke-direct {v0, v1, v5}, Lcom/apprupt/sdk/adview/CloseButtonPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/adview/CloseButtonPosition;->BOTTOM_RIGHT:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    new-instance v0, Lcom/apprupt/sdk/adview/CloseButtonPosition;

    const-string v1, "BOTTOM_LEFT"

    invoke-direct {v0, v1, v6}, Lcom/apprupt/sdk/adview/CloseButtonPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/adview/CloseButtonPosition;->BOTTOM_LEFT:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    new-instance v0, Lcom/apprupt/sdk/adview/CloseButtonPosition;

    const-string v1, "TOP_LEFT"

    invoke-direct {v0, v1, v7}, Lcom/apprupt/sdk/adview/CloseButtonPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/adview/CloseButtonPosition;->TOP_LEFT:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    new-instance v0, Lcom/apprupt/sdk/adview/CloseButtonPosition;

    const-string v1, "CENTER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/apprupt/sdk/adview/CloseButtonPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/adview/CloseButtonPosition;->CENTER:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    new-instance v0, Lcom/apprupt/sdk/adview/CloseButtonPosition;

    const-string v1, "TOP_CENTER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/apprupt/sdk/adview/CloseButtonPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/adview/CloseButtonPosition;->TOP_CENTER:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    new-instance v0, Lcom/apprupt/sdk/adview/CloseButtonPosition;

    const-string v1, "BOTTOM_CENTER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/apprupt/sdk/adview/CloseButtonPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/adview/CloseButtonPosition;->BOTTOM_CENTER:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    .line 6
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/apprupt/sdk/adview/CloseButtonPosition;

    sget-object v1, Lcom/apprupt/sdk/adview/CloseButtonPosition;->HIDDEN:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/apprupt/sdk/adview/CloseButtonPosition;->TOP_RIGHT:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/apprupt/sdk/adview/CloseButtonPosition;->BOTTOM_RIGHT:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    aput-object v1, v0, v5

    sget-object v1, Lcom/apprupt/sdk/adview/CloseButtonPosition;->BOTTOM_LEFT:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    aput-object v1, v0, v6

    sget-object v1, Lcom/apprupt/sdk/adview/CloseButtonPosition;->TOP_LEFT:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/apprupt/sdk/adview/CloseButtonPosition;->CENTER:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/apprupt/sdk/adview/CloseButtonPosition;->TOP_CENTER:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/apprupt/sdk/adview/CloseButtonPosition;->BOTTOM_CENTER:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    aput-object v2, v0, v1

    sput-object v0, Lcom/apprupt/sdk/adview/CloseButtonPosition;->a:[Lcom/apprupt/sdk/adview/CloseButtonPosition;

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

.method public static valueOf(Ljava/lang/String;)Lcom/apprupt/sdk/adview/CloseButtonPosition;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/apprupt/sdk/adview/CloseButtonPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/adview/CloseButtonPosition;

    return-object v0
.end method

.method public static values()[Lcom/apprupt/sdk/adview/CloseButtonPosition;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/apprupt/sdk/adview/CloseButtonPosition;->a:[Lcom/apprupt/sdk/adview/CloseButtonPosition;

    invoke-virtual {v0}, [Lcom/apprupt/sdk/adview/CloseButtonPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apprupt/sdk/adview/CloseButtonPosition;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 13
    sget-object v0, Lcom/apprupt/sdk/adview/CloseButtonPosition$1;->a:[I

    invoke-virtual {p0}, Lcom/apprupt/sdk/adview/CloseButtonPosition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 29
    const-string v0, "top-right"

    :goto_0
    return-object v0

    .line 15
    :pswitch_0
    const-string v0, "hidden"

    goto :goto_0

    .line 17
    :pswitch_1
    const-string v0, "bottom-right"

    goto :goto_0

    .line 19
    :pswitch_2
    const-string v0, "bottom-left"

    goto :goto_0

    .line 21
    :pswitch_3
    const-string v0, "bottom-center"

    goto :goto_0

    .line 23
    :pswitch_4
    const-string v0, "center"

    goto :goto_0

    .line 25
    :pswitch_5
    const-string v0, "top-left"

    goto :goto_0

    .line 27
    :pswitch_6
    const-string v0, "top-center"

    goto :goto_0

    .line 13
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
