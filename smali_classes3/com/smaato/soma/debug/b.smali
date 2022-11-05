.class public Lcom/smaato/soma/debug/b;
.super Ljava/lang/Object;
.source "LogMessage.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Lcom/smaato/soma/debug/DebugCategory;

.field private e:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/smaato/soma/debug/b;->a:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/smaato/soma/debug/b;->b:Ljava/lang/String;

    .line 21
    iput p3, p0, Lcom/smaato/soma/debug/b;->c:I

    .line 22
    iput-object p4, p0, Lcom/smaato/soma/debug/b;->d:Lcom/smaato/soma/debug/DebugCategory;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/smaato/soma/debug/b;->a:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/smaato/soma/debug/b;->b:Ljava/lang/String;

    .line 33
    iput p3, p0, Lcom/smaato/soma/debug/b;->c:I

    .line 34
    iput-object p4, p0, Lcom/smaato/soma/debug/b;->d:Lcom/smaato/soma/debug/DebugCategory;

    .line 35
    iput-object p5, p0, Lcom/smaato/soma/debug/b;->e:Ljava/lang/Throwable;

    .line 36
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/smaato/soma/debug/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/smaato/soma/debug/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/smaato/soma/debug/b;->c:I

    return v0
.end method

.method public final d()Lcom/smaato/soma/debug/DebugCategory;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/smaato/soma/debug/b;->d:Lcom/smaato/soma/debug/DebugCategory;

    return-object v0
.end method

.method public e()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/smaato/soma/debug/b;->e:Ljava/lang/Throwable;

    return-object v0
.end method
