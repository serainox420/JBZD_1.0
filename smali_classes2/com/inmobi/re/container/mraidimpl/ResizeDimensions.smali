.class public Lcom/inmobi/re/container/mraidimpl/ResizeDimensions;
.super Ljava/lang/Object;
.source "ResizeDimensions.java"


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/inmobi/re/container/mraidimpl/ResizeDimensions;->a:I

    .line 19
    iput p2, p0, Lcom/inmobi/re/container/mraidimpl/ResizeDimensions;->b:I

    .line 20
    iput p3, p0, Lcom/inmobi/re/container/mraidimpl/ResizeDimensions;->c:I

    .line 21
    iput p4, p0, Lcom/inmobi/re/container/mraidimpl/ResizeDimensions;->d:I

    .line 22
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/inmobi/re/container/mraidimpl/ResizeDimensions;->d:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/inmobi/re/container/mraidimpl/ResizeDimensions;->c:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 6
    iget v0, p0, Lcom/inmobi/re/container/mraidimpl/ResizeDimensions;->a:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 9
    iget v0, p0, Lcom/inmobi/re/container/mraidimpl/ResizeDimensions;->b:I

    return v0
.end method
