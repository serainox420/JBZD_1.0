.class final enum Lcom/mopub/mobileads/VastXmlManagerAggregator$a;
.super Ljava/lang/Enum;
.source "VastXmlManagerAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/VastXmlManagerAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mopub/mobileads/VastXmlManagerAggregator$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum LANDSCAPE:Lcom/mopub/mobileads/VastXmlManagerAggregator$a;

.field public static final enum PORTRAIT:Lcom/mopub/mobileads/VastXmlManagerAggregator$a;

.field private static final synthetic a:[Lcom/mopub/mobileads/VastXmlManagerAggregator$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    new-instance v0, Lcom/mopub/mobileads/VastXmlManagerAggregator$a;

    const-string v1, "LANDSCAPE"

    invoke-direct {v0, v1, v2}, Lcom/mopub/mobileads/VastXmlManagerAggregator$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/VastXmlManagerAggregator$a;->LANDSCAPE:Lcom/mopub/mobileads/VastXmlManagerAggregator$a;

    .line 68
    new-instance v0, Lcom/mopub/mobileads/VastXmlManagerAggregator$a;

    const-string v1, "PORTRAIT"

    invoke-direct {v0, v1, v3}, Lcom/mopub/mobileads/VastXmlManagerAggregator$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/VastXmlManagerAggregator$a;->PORTRAIT:Lcom/mopub/mobileads/VastXmlManagerAggregator$a;

    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mopub/mobileads/VastXmlManagerAggregator$a;

    sget-object v1, Lcom/mopub/mobileads/VastXmlManagerAggregator$a;->LANDSCAPE:Lcom/mopub/mobileads/VastXmlManagerAggregator$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/mobileads/VastXmlManagerAggregator$a;->PORTRAIT:Lcom/mopub/mobileads/VastXmlManagerAggregator$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/mopub/mobileads/VastXmlManagerAggregator$a;->a:[Lcom/mopub/mobileads/VastXmlManagerAggregator$a;

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
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/mobileads/VastXmlManagerAggregator$a;
    .locals 1

    .prologue
    .line 66
    const-class v0, Lcom/mopub/mobileads/VastXmlManagerAggregator$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/VastXmlManagerAggregator$a;

    return-object v0
.end method

.method public static values()[Lcom/mopub/mobileads/VastXmlManagerAggregator$a;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/mopub/mobileads/VastXmlManagerAggregator$a;->a:[Lcom/mopub/mobileads/VastXmlManagerAggregator$a;

    invoke-virtual {v0}, [Lcom/mopub/mobileads/VastXmlManagerAggregator$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/mobileads/VastXmlManagerAggregator$a;

    return-object v0
.end method
