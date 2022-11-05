.class public final enum Lcom/pubmatic/sdk/common/CommonConstants$Method;
.super Ljava/lang/Enum;
.source "CommonConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/common/CommonConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pubmatic/sdk/common/CommonConstants$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pubmatic/sdk/common/CommonConstants$Method;

.field public static final enum GET:Lcom/pubmatic/sdk/common/CommonConstants$Method;

.field public static final enum POST:Lcom/pubmatic/sdk/common/CommonConstants$Method;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/pubmatic/sdk/common/CommonConstants$Method;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/CommonConstants$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/CommonConstants$Method;->GET:Lcom/pubmatic/sdk/common/CommonConstants$Method;

    new-instance v0, Lcom/pubmatic/sdk/common/CommonConstants$Method;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lcom/pubmatic/sdk/common/CommonConstants$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/CommonConstants$Method;->POST:Lcom/pubmatic/sdk/common/CommonConstants$Method;

    .line 13
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/pubmatic/sdk/common/CommonConstants$Method;

    sget-object v1, Lcom/pubmatic/sdk/common/CommonConstants$Method;->GET:Lcom/pubmatic/sdk/common/CommonConstants$Method;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pubmatic/sdk/common/CommonConstants$Method;->POST:Lcom/pubmatic/sdk/common/CommonConstants$Method;

    aput-object v1, v0, v3

    sput-object v0, Lcom/pubmatic/sdk/common/CommonConstants$Method;->$VALUES:[Lcom/pubmatic/sdk/common/CommonConstants$Method;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pubmatic/sdk/common/CommonConstants$Method;
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/pubmatic/sdk/common/CommonConstants$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/common/CommonConstants$Method;

    return-object v0
.end method

.method public static values()[Lcom/pubmatic/sdk/common/CommonConstants$Method;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/pubmatic/sdk/common/CommonConstants$Method;->$VALUES:[Lcom/pubmatic/sdk/common/CommonConstants$Method;

    invoke-virtual {v0}, [Lcom/pubmatic/sdk/common/CommonConstants$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pubmatic/sdk/common/CommonConstants$Method;

    return-object v0
.end method
