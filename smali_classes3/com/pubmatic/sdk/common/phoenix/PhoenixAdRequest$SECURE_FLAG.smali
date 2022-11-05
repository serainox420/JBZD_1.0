.class public final enum Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;
.super Ljava/lang/Enum;
.source "PhoenixAdRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SECURE_FLAG"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;

.field public static final enum DEFAULT:Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;

.field public static final enum NON_SECURE:Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;

.field public static final enum SECURE:Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 457
    new-instance v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;->DEFAULT:Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;

    new-instance v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;

    const-string v1, "SECURE"

    invoke-direct {v0, v1, v3}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;->SECURE:Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;

    new-instance v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;

    const-string v1, "NON_SECURE"

    invoke-direct {v0, v1, v4}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;->NON_SECURE:Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;

    sget-object v1, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;->DEFAULT:Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;->SECURE:Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;->NON_SECURE:Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;

    aput-object v1, v0, v4

    sput-object v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;->$VALUES:[Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;

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
    .line 457
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;
    .locals 1

    .prologue
    .line 457
    const-class v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;

    return-object v0
.end method

.method public static values()[Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;
    .locals 1

    .prologue
    .line 457
    sget-object v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;->$VALUES:[Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;

    invoke-virtual {v0}, [Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;

    return-object v0
.end method
