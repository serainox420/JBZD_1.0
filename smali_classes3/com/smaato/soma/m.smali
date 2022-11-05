.class public Lcom/smaato/soma/m;
.super Ljava/lang/Object;
.source "ExpandController.java"


# static fields
.field private static b:Lcom/smaato/soma/m;


# instance fields
.field public a:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/smaato/soma/m;->a:J

    .line 8
    return-void
.end method

.method public static a()Lcom/smaato/soma/m;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/smaato/soma/m;->b:Lcom/smaato/soma/m;

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Lcom/smaato/soma/m;

    invoke-direct {v0}, Lcom/smaato/soma/m;-><init>()V

    sput-object v0, Lcom/smaato/soma/m;->b:Lcom/smaato/soma/m;

    .line 14
    :cond_0
    sget-object v0, Lcom/smaato/soma/m;->b:Lcom/smaato/soma/m;

    return-object v0
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .prologue
    .line 18
    iput-wide p1, p0, Lcom/smaato/soma/m;->a:J

    .line 19
    return-void
.end method
