.class Lcom/adcolony/sdk/ai$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adcolony/sdk/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:D

.field h:D

.field final synthetic i:Lcom/adcolony/sdk/ai;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ai;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 586
    iput-object p1, p0, Lcom/adcolony/sdk/ai$a;->i:Lcom/adcolony/sdk/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 587
    sget v0, Lcom/adcolony/sdk/ai;->g:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/adcolony/sdk/ai;->g:I

    iput v0, p0, Lcom/adcolony/sdk/ai$a;->b:I

    .line 589
    const/4 v0, 0x1

    sget-object v1, Lcom/adcolony/sdk/ai;->k:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 591
    sget-object v0, Lcom/adcolony/sdk/ai;->k:[I

    aget v0, v0, v2

    iput v0, p0, Lcom/adcolony/sdk/ai$a;->a:I

    .line 592
    return-void
.end method


# virtual methods
.method a(Ljava/nio/IntBuffer;II)Lcom/adcolony/sdk/ai$a;
    .locals 9

    .prologue
    const/16 v2, 0x1908

    const/16 v0, 0xde1

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 600
    move v4, v3

    .line 602
    :goto_0
    if-ge v4, p2, :cond_0

    .line 604
    shl-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 606
    :cond_0
    :goto_1
    if-ge v3, p3, :cond_1

    .line 608
    shl-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 611
    :cond_1
    iput p2, p0, Lcom/adcolony/sdk/ai$a;->c:I

    .line 612
    iput p3, p0, Lcom/adcolony/sdk/ai$a;->d:I

    .line 613
    iput v4, p0, Lcom/adcolony/sdk/ai$a;->e:I

    .line 614
    iput v3, p0, Lcom/adcolony/sdk/ai$a;->f:I

    .line 615
    iget v3, p0, Lcom/adcolony/sdk/ai$a;->c:I

    int-to-double v4, v3

    iget v3, p0, Lcom/adcolony/sdk/ai$a;->e:I

    int-to-double v6, v3

    div-double/2addr v4, v6

    iput-wide v4, p0, Lcom/adcolony/sdk/ai$a;->g:D

    .line 616
    iget v3, p0, Lcom/adcolony/sdk/ai$a;->d:I

    int-to-double v4, v3

    iget v3, p0, Lcom/adcolony/sdk/ai$a;->f:I

    int-to-double v6, v3

    div-double/2addr v4, v6

    iput-wide v4, p0, Lcom/adcolony/sdk/ai$a;->h:D

    .line 619
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 620
    mul-int v3, p2, p3

    :goto_2
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_2

    .line 622
    invoke-virtual {p1, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    .line 623
    const v5, -0xff0100

    and-int/2addr v5, v4

    shr-int/lit8 v6, v4, 0x10

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    shl-int/lit8 v4, v4, 0x10

    const/high16 v6, 0xff0000

    and-int/2addr v4, v6

    or-int/2addr v4, v5

    invoke-virtual {p1, v3, v4}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    goto :goto_2

    .line 626
    :cond_2
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 627
    iget v3, p0, Lcom/adcolony/sdk/ai$a;->c:I

    iget v4, p0, Lcom/adcolony/sdk/ai$a;->e:I

    if-ge v3, v4, :cond_4

    .line 631
    iget v3, p0, Lcom/adcolony/sdk/ai$a;->d:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/adcolony/sdk/ai$a;->e:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/adcolony/sdk/ai$a;->c:I

    add-int v5, v3, v4

    .line 632
    iget v3, p0, Lcom/adcolony/sdk/ai$a;->c:I

    iget v4, p0, Lcom/adcolony/sdk/ai$a;->d:I

    mul-int/2addr v4, v3

    .line 633
    iget v3, p0, Lcom/adcolony/sdk/ai$a;->d:I

    .line 634
    iget v6, p0, Lcom/adcolony/sdk/ai$a;->e:I

    iget v7, p0, Lcom/adcolony/sdk/ai$a;->c:I

    sub-int v7, v6, v7

    .line 635
    :goto_3
    add-int/lit8 v6, v3, -0x1

    if-ltz v6, :cond_4

    .line 639
    add-int/lit8 v3, v4, -0x1

    invoke-virtual {p1, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    invoke-virtual {p1, v5, v3}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 641
    iget v3, p0, Lcom/adcolony/sdk/ai$a;->c:I

    .line 642
    :goto_4
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_3

    .line 644
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v4}, Ljava/nio/IntBuffer;->get(I)I

    move-result v8

    invoke-virtual {p1, v5, v8}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    goto :goto_4

    .line 646
    :cond_3
    sub-int/2addr v5, v7

    move v3, v6

    .line 647
    goto :goto_3

    .line 650
    :cond_4
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 651
    iget v3, p0, Lcom/adcolony/sdk/ai$a;->d:I

    iget v4, p0, Lcom/adcolony/sdk/ai$a;->f:I

    if-ge v3, v4, :cond_5

    .line 654
    iget v3, p0, Lcom/adcolony/sdk/ai$a;->d:I

    iget v4, p0, Lcom/adcolony/sdk/ai$a;->e:I

    mul-int v5, v3, v4

    .line 655
    iget v3, p0, Lcom/adcolony/sdk/ai$a;->e:I

    add-int v4, v5, v3

    .line 656
    iget v3, p0, Lcom/adcolony/sdk/ai$a;->e:I

    .line 657
    :goto_5
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_5

    .line 659
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v5}, Ljava/nio/IntBuffer;->get(I)I

    move-result v6

    invoke-virtual {p1, v4, v6}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    goto :goto_5

    .line 663
    :cond_5
    iget v3, p0, Lcom/adcolony/sdk/ai$a;->a:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 665
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 666
    iget v3, p0, Lcom/adcolony/sdk/ai$a;->e:I

    iget v4, p0, Lcom/adcolony/sdk/ai$a;->f:I

    const/16 v7, 0x1401

    move v5, v1

    move v6, v2

    move-object v8, p1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 670
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ADC3 Texture::set gl_texture_id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/adcolony/sdk/ai$a;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " texture_id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/adcolony/sdk/ai$a;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " w:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 672
    return-object p0
.end method
