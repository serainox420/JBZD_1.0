.class final enum Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;
.super Ljava/lang/Enum;
.source "RevMobFullscreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;

.field public static final enum FULLSCREEN:Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;

.field public static final enum REWARDED_VIDEO:Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;

.field public static final enum UNKNOWN:Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;

.field public static final enum VIDEO:Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;->UNKNOWN:Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;

    .line 24
    new-instance v0, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;

    const-string v1, "FULLSCREEN"

    invoke-direct {v0, v1, v3}, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;->FULLSCREEN:Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;

    .line 25
    new-instance v0, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v4}, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;->VIDEO:Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;

    .line 26
    new-instance v0, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;

    const-string v1, "REWARDED_VIDEO"

    invoke-direct {v0, v1, v5}, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;->REWARDED_VIDEO:Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;

    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;

    sget-object v1, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;->UNKNOWN:Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;->FULLSCREEN:Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;->VIDEO:Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;->REWARDED_VIDEO:Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;->$VALUES:[Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;

    return-object v0
.end method

.method public static values()[Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;->$VALUES:[Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;

    invoke-virtual {v0}, [Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen$a;

    return-object v0
.end method
