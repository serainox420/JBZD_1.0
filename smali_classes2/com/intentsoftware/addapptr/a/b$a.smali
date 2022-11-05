.class Lcom/intentsoftware/addapptr/a/b$a;
.super Ljava/lang/Object;
.source "ConfigDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intentsoftware/addapptr/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final config:Lcom/intentsoftware/addapptr/a/a;

.field private final configString:Ljava/lang/String;

.field private final source:Lcom/intentsoftware/addapptr/a/b$b;

.field final synthetic this$0:Lcom/intentsoftware/addapptr/a/b;


# direct methods
.method private constructor <init>(Lcom/intentsoftware/addapptr/a/b;Lcom/intentsoftware/addapptr/a/a;Ljava/lang/String;Lcom/intentsoftware/addapptr/a/b$b;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/intentsoftware/addapptr/a/b$a;->this$0:Lcom/intentsoftware/addapptr/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p2, p0, Lcom/intentsoftware/addapptr/a/b$a;->config:Lcom/intentsoftware/addapptr/a/a;

    .line 51
    iput-object p3, p0, Lcom/intentsoftware/addapptr/a/b$a;->configString:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lcom/intentsoftware/addapptr/a/b$a;->source:Lcom/intentsoftware/addapptr/a/b$b;

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Lcom/intentsoftware/addapptr/a/b;Lcom/intentsoftware/addapptr/a/a;Ljava/lang/String;Lcom/intentsoftware/addapptr/a/b$b;Lcom/intentsoftware/addapptr/a/b$1;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/intentsoftware/addapptr/a/b$a;-><init>(Lcom/intentsoftware/addapptr/a/b;Lcom/intentsoftware/addapptr/a/a;Ljava/lang/String;Lcom/intentsoftware/addapptr/a/b$b;)V

    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/a/b$a;)Lcom/intentsoftware/addapptr/a/a;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b$a;->config:Lcom/intentsoftware/addapptr/a/a;

    return-object v0
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/a/b$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b$a;->configString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/intentsoftware/addapptr/a/b$a;)Lcom/intentsoftware/addapptr/a/b$b;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b$a;->source:Lcom/intentsoftware/addapptr/a/b$b;

    return-object v0
.end method
