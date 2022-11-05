.class final enum Lcom/mopub/mobileads/a$a;
.super Ljava/lang/Enum;
.source "BaseInterstitialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mopub/mobileads/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum WEB_VIEW_DID_APPEAR:Lcom/mopub/mobileads/a$a;

.field public static final enum WEB_VIEW_DID_CLOSE:Lcom/mopub/mobileads/a$a;

.field private static final synthetic b:[Lcom/mopub/mobileads/a$a;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-instance v0, Lcom/mopub/mobileads/a$a;

    const-string v1, "WEB_VIEW_DID_APPEAR"

    const-string v2, "webviewDidAppear();"

    invoke-direct {v0, v1, v3, v2}, Lcom/mopub/mobileads/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/a$a;->WEB_VIEW_DID_APPEAR:Lcom/mopub/mobileads/a$a;

    .line 26
    new-instance v0, Lcom/mopub/mobileads/a$a;

    const-string v1, "WEB_VIEW_DID_CLOSE"

    const-string v2, "webviewDidClose();"

    invoke-direct {v0, v1, v4, v2}, Lcom/mopub/mobileads/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/a$a;->WEB_VIEW_DID_CLOSE:Lcom/mopub/mobileads/a$a;

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mopub/mobileads/a$a;

    sget-object v1, Lcom/mopub/mobileads/a$a;->WEB_VIEW_DID_APPEAR:Lcom/mopub/mobileads/a$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mopub/mobileads/a$a;->WEB_VIEW_DID_CLOSE:Lcom/mopub/mobileads/a$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mopub/mobileads/a$a;->b:[Lcom/mopub/mobileads/a$a;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput-object p3, p0, Lcom/mopub/mobileads/a$a;->a:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/mobileads/a$a;
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/mopub/mobileads/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/a$a;

    return-object v0
.end method

.method public static values()[Lcom/mopub/mobileads/a$a;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/mopub/mobileads/a$a;->b:[Lcom/mopub/mobileads/a$a;

    invoke-virtual {v0}, [Lcom/mopub/mobileads/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/mobileads/a$a;

    return-object v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mopub/mobileads/a$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
