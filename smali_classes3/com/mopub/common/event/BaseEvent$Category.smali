.class public final enum Lcom/mopub/common/event/BaseEvent$Category;
.super Ljava/lang/Enum;
.source "BaseEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/event/BaseEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mopub/common/event/BaseEvent$Category;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AD_INTERACTIONS:Lcom/mopub/common/event/BaseEvent$Category;

.field public static final enum NATIVE_VIDEO:Lcom/mopub/common/event/BaseEvent$Category;

.field public static final enum REQUESTS:Lcom/mopub/common/event/BaseEvent$Category;

.field private static final synthetic b:[Lcom/mopub/common/event/BaseEvent$Category;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 92
    new-instance v0, Lcom/mopub/common/event/BaseEvent$Category;

    const-string v1, "REQUESTS"

    const-string v2, "requests"

    invoke-direct {v0, v1, v3, v2}, Lcom/mopub/common/event/BaseEvent$Category;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/event/BaseEvent$Category;->REQUESTS:Lcom/mopub/common/event/BaseEvent$Category;

    .line 93
    new-instance v0, Lcom/mopub/common/event/BaseEvent$Category;

    const-string v1, "NATIVE_VIDEO"

    const-string v2, "native_video"

    invoke-direct {v0, v1, v4, v2}, Lcom/mopub/common/event/BaseEvent$Category;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/event/BaseEvent$Category;->NATIVE_VIDEO:Lcom/mopub/common/event/BaseEvent$Category;

    .line 94
    new-instance v0, Lcom/mopub/common/event/BaseEvent$Category;

    const-string v1, "AD_INTERACTIONS"

    const-string v2, "ad_interactions"

    invoke-direct {v0, v1, v5, v2}, Lcom/mopub/common/event/BaseEvent$Category;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/event/BaseEvent$Category;->AD_INTERACTIONS:Lcom/mopub/common/event/BaseEvent$Category;

    .line 91
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mopub/common/event/BaseEvent$Category;

    sget-object v1, Lcom/mopub/common/event/BaseEvent$Category;->REQUESTS:Lcom/mopub/common/event/BaseEvent$Category;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mopub/common/event/BaseEvent$Category;->NATIVE_VIDEO:Lcom/mopub/common/event/BaseEvent$Category;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mopub/common/event/BaseEvent$Category;->AD_INTERACTIONS:Lcom/mopub/common/event/BaseEvent$Category;

    aput-object v1, v0, v5

    sput-object v0, Lcom/mopub/common/event/BaseEvent$Category;->b:[Lcom/mopub/common/event/BaseEvent$Category;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 99
    iput-object p3, p0, Lcom/mopub/common/event/BaseEvent$Category;->a:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/common/event/BaseEvent$Category;
    .locals 1

    .prologue
    .line 91
    const-class v0, Lcom/mopub/common/event/BaseEvent$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/event/BaseEvent$Category;

    return-object v0
.end method

.method public static values()[Lcom/mopub/common/event/BaseEvent$Category;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/mopub/common/event/BaseEvent$Category;->b:[Lcom/mopub/common/event/BaseEvent$Category;

    invoke-virtual {v0}, [Lcom/mopub/common/event/BaseEvent$Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/common/event/BaseEvent$Category;

    return-object v0
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent$Category;->a:Ljava/lang/String;

    return-object v0
.end method
