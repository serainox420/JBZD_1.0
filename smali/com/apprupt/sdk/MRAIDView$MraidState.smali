.class final enum Lcom/apprupt/sdk/MRAIDView$MraidState;
.super Ljava/lang/Enum;
.source "MRAIDView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/MRAIDView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MraidState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/apprupt/sdk/MRAIDView$MraidState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/apprupt/sdk/MRAIDView$MraidState;

.field public static final enum b:Lcom/apprupt/sdk/MRAIDView$MraidState;

.field public static final enum c:Lcom/apprupt/sdk/MRAIDView$MraidState;

.field public static final enum d:Lcom/apprupt/sdk/MRAIDView$MraidState;

.field public static final enum e:Lcom/apprupt/sdk/MRAIDView$MraidState;

.field private static final synthetic f:[Lcom/apprupt/sdk/MRAIDView$MraidState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1057
    new-instance v0, Lcom/apprupt/sdk/MRAIDView$MraidState;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v2}, Lcom/apprupt/sdk/MRAIDView$MraidState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/MRAIDView$MraidState;->a:Lcom/apprupt/sdk/MRAIDView$MraidState;

    new-instance v0, Lcom/apprupt/sdk/MRAIDView$MraidState;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v3}, Lcom/apprupt/sdk/MRAIDView$MraidState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/MRAIDView$MraidState;->b:Lcom/apprupt/sdk/MRAIDView$MraidState;

    new-instance v0, Lcom/apprupt/sdk/MRAIDView$MraidState;

    const-string v1, "RESIZED"

    invoke-direct {v0, v1, v4}, Lcom/apprupt/sdk/MRAIDView$MraidState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/MRAIDView$MraidState;->c:Lcom/apprupt/sdk/MRAIDView$MraidState;

    new-instance v0, Lcom/apprupt/sdk/MRAIDView$MraidState;

    const-string v1, "EXPANDED"

    invoke-direct {v0, v1, v5}, Lcom/apprupt/sdk/MRAIDView$MraidState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/MRAIDView$MraidState;->d:Lcom/apprupt/sdk/MRAIDView$MraidState;

    new-instance v0, Lcom/apprupt/sdk/MRAIDView$MraidState;

    const-string v1, "HIDDEN"

    invoke-direct {v0, v1, v6}, Lcom/apprupt/sdk/MRAIDView$MraidState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/MRAIDView$MraidState;->e:Lcom/apprupt/sdk/MRAIDView$MraidState;

    .line 1055
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/apprupt/sdk/MRAIDView$MraidState;

    sget-object v1, Lcom/apprupt/sdk/MRAIDView$MraidState;->a:Lcom/apprupt/sdk/MRAIDView$MraidState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/apprupt/sdk/MRAIDView$MraidState;->b:Lcom/apprupt/sdk/MRAIDView$MraidState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/apprupt/sdk/MRAIDView$MraidState;->c:Lcom/apprupt/sdk/MRAIDView$MraidState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/apprupt/sdk/MRAIDView$MraidState;->d:Lcom/apprupt/sdk/MRAIDView$MraidState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/apprupt/sdk/MRAIDView$MraidState;->e:Lcom/apprupt/sdk/MRAIDView$MraidState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/apprupt/sdk/MRAIDView$MraidState;->f:[Lcom/apprupt/sdk/MRAIDView$MraidState;

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
    .line 1055
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apprupt/sdk/MRAIDView$MraidState;
    .locals 1

    .prologue
    .line 1055
    const-class v0, Lcom/apprupt/sdk/MRAIDView$MraidState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/MRAIDView$MraidState;

    return-object v0
.end method

.method public static values()[Lcom/apprupt/sdk/MRAIDView$MraidState;
    .locals 1

    .prologue
    .line 1055
    sget-object v0, Lcom/apprupt/sdk/MRAIDView$MraidState;->f:[Lcom/apprupt/sdk/MRAIDView$MraidState;

    invoke-virtual {v0}, [Lcom/apprupt/sdk/MRAIDView$MraidState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apprupt/sdk/MRAIDView$MraidState;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1060
    sget-object v0, Lcom/apprupt/sdk/MRAIDView$24;->a:[I

    invoke-virtual {p0}, Lcom/apprupt/sdk/MRAIDView$MraidState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1072
    const-string v0, "unknown"

    :goto_0
    return-object v0

    .line 1062
    :pswitch_0
    const-string v0, "loading"

    goto :goto_0

    .line 1064
    :pswitch_1
    const-string v0, "default"

    goto :goto_0

    .line 1066
    :pswitch_2
    const-string v0, "resized"

    goto :goto_0

    .line 1068
    :pswitch_3
    const-string v0, "expanded"

    goto :goto_0

    .line 1070
    :pswitch_4
    const-string v0, "hidden"

    goto :goto_0

    .line 1060
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
