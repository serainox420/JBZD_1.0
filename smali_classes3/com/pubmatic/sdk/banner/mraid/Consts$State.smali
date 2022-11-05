.class public final enum Lcom/pubmatic/sdk/banner/mraid/Consts$State;
.super Ljava/lang/Enum;
.source "Consts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/banner/mraid/Consts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pubmatic/sdk/banner/mraid/Consts$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pubmatic/sdk/banner/mraid/Consts$State;

.field public static final enum Default:Lcom/pubmatic/sdk/banner/mraid/Consts$State;

.field public static final enum Expanded:Lcom/pubmatic/sdk/banner/mraid/Consts$State;

.field public static final enum Hidden:Lcom/pubmatic/sdk/banner/mraid/Consts$State;

.field public static final enum Loading:Lcom/pubmatic/sdk/banner/mraid/Consts$State;

.field public static final enum Resized:Lcom/pubmatic/sdk/banner/mraid/Consts$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    const-string v1, "Loading"

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/banner/mraid/Consts$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$State;->Loading:Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    .line 25
    new-instance v0, Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    const-string v1, "Default"

    invoke-direct {v0, v1, v3}, Lcom/pubmatic/sdk/banner/mraid/Consts$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$State;->Default:Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    .line 26
    new-instance v0, Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    const-string v1, "Expanded"

    invoke-direct {v0, v1, v4}, Lcom/pubmatic/sdk/banner/mraid/Consts$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$State;->Expanded:Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    .line 27
    new-instance v0, Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    const-string v1, "Resized"

    invoke-direct {v0, v1, v5}, Lcom/pubmatic/sdk/banner/mraid/Consts$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$State;->Resized:Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    .line 28
    new-instance v0, Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    const-string v1, "Hidden"

    invoke-direct {v0, v1, v6}, Lcom/pubmatic/sdk/banner/mraid/Consts$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$State;->Hidden:Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    .line 22
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$State;->Loading:Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$State;->Default:Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$State;->Expanded:Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$State;->Resized:Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$State;->Hidden:Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$State;->$VALUES:[Lcom/pubmatic/sdk/banner/mraid/Consts$State;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pubmatic/sdk/banner/mraid/Consts$State;
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    return-object v0
.end method

.method public static values()[Lcom/pubmatic/sdk/banner/mraid/Consts$State;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$State;->$VALUES:[Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    invoke-virtual {v0}, [Lcom/pubmatic/sdk/banner/mraid/Consts$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    return-object v0
.end method
