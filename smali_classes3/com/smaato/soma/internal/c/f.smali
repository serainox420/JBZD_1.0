.class public Lcom/smaato/soma/internal/c/f;
.super Ljava/lang/Object;
.source "ImageDownloadProperties.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/smaato/soma/internal/c/f;->a:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/smaato/soma/internal/c/f;->b:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/smaato/soma/internal/c/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/smaato/soma/internal/c/f;->b:Landroid/content/Context;

    return-object v0
.end method
