.class final enum Lcom/intentsoftware/addapptr/a/b$b;
.super Ljava/lang/Enum;
.source "ConfigDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intentsoftware/addapptr/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/intentsoftware/addapptr/a/b$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/intentsoftware/addapptr/a/b$b;

.field public static final enum CACHE:Lcom/intentsoftware/addapptr/a/b$b;

.field public static final enum DEFAULT:Lcom/intentsoftware/addapptr/a/b$b;

.field public static final enum SERVER:Lcom/intentsoftware/addapptr/a/b$b;


# instance fields
.field private final logName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    new-instance v0, Lcom/intentsoftware/addapptr/a/b$b;

    const-string v1, "SERVER"

    const-string v2, "Server"

    invoke-direct {v0, v1, v3, v2}, Lcom/intentsoftware/addapptr/a/b$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/intentsoftware/addapptr/a/b$b;->SERVER:Lcom/intentsoftware/addapptr/a/b$b;

    .line 34
    new-instance v0, Lcom/intentsoftware/addapptr/a/b$b;

    const-string v1, "DEFAULT"

    const-string v2, "Default"

    invoke-direct {v0, v1, v4, v2}, Lcom/intentsoftware/addapptr/a/b$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/intentsoftware/addapptr/a/b$b;->DEFAULT:Lcom/intentsoftware/addapptr/a/b$b;

    .line 35
    new-instance v0, Lcom/intentsoftware/addapptr/a/b$b;

    const-string v1, "CACHE"

    const-string v2, "Cache"

    invoke-direct {v0, v1, v5, v2}, Lcom/intentsoftware/addapptr/a/b$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/intentsoftware/addapptr/a/b$b;->CACHE:Lcom/intentsoftware/addapptr/a/b$b;

    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/intentsoftware/addapptr/a/b$b;

    sget-object v1, Lcom/intentsoftware/addapptr/a/b$b;->SERVER:Lcom/intentsoftware/addapptr/a/b$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/intentsoftware/addapptr/a/b$b;->DEFAULT:Lcom/intentsoftware/addapptr/a/b$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/intentsoftware/addapptr/a/b$b;->CACHE:Lcom/intentsoftware/addapptr/a/b$b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/intentsoftware/addapptr/a/b$b;->$VALUES:[Lcom/intentsoftware/addapptr/a/b$b;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput-object p3, p0, Lcom/intentsoftware/addapptr/a/b$b;->logName:Ljava/lang/String;

    .line 41
    return-void
.end method

.method static synthetic access$500(Lcom/intentsoftware/addapptr/a/b$b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b$b;->logName:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/intentsoftware/addapptr/a/b$b;
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/intentsoftware/addapptr/a/b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/a/b$b;

    return-object v0
.end method

.method public static values()[Lcom/intentsoftware/addapptr/a/b$b;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/intentsoftware/addapptr/a/b$b;->$VALUES:[Lcom/intentsoftware/addapptr/a/b$b;

    invoke-virtual {v0}, [Lcom/intentsoftware/addapptr/a/b$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/intentsoftware/addapptr/a/b$b;

    return-object v0
.end method
