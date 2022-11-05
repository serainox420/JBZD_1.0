.class public Lcom/smaato/soma/measurements/b;
.super Ljava/lang/Object;
.source "Reporter.java"


# static fields
.field private static a:Lcom/smaato/soma/measurements/b;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "Reporter"

    sput-object v0, Lcom/smaato/soma/measurements/b;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/smaato/soma/measurements/b;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/smaato/soma/measurements/b;->a:Lcom/smaato/soma/measurements/b;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/smaato/soma/measurements/b;

    invoke-direct {v0}, Lcom/smaato/soma/measurements/b;-><init>()V

    sput-object v0, Lcom/smaato/soma/measurements/b;->a:Lcom/smaato/soma/measurements/b;

    .line 39
    :cond_0
    sget-object v0, Lcom/smaato/soma/measurements/b;->a:Lcom/smaato/soma/measurements/b;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/smaato/soma/measurements/b;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/smaato/soma/measurements/FraudesType;)V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/smaato/soma/measurements/b$1;

    invoke-direct {v0, p0, p1}, Lcom/smaato/soma/measurements/b$1;-><init>(Lcom/smaato/soma/measurements/b;Lcom/smaato/soma/measurements/FraudesType;)V

    .line 86
    invoke-virtual {v0}, Lcom/smaato/soma/measurements/b$1;->c()Ljava/lang/Object;

    .line 87
    return-void
.end method
