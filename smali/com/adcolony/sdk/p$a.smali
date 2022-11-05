.class Lcom/adcolony/sdk/p$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adcolony/sdk/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static a:I


# instance fields
.field b:I

.field c:Ljava/lang/String;

.field d:Z

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x1

    sput v0, Lcom/adcolony/sdk/p$a;->a:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;II)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    iput-boolean v1, p0, Lcom/adcolony/sdk/p$a;->d:Z

    .line 369
    iput p1, p0, Lcom/adcolony/sdk/p$a;->b:I

    .line 370
    iget v0, p0, Lcom/adcolony/sdk/p$a;->e:I

    iput v0, p0, Lcom/adcolony/sdk/p$a;->e:I

    .line 371
    iput-object p2, p0, Lcom/adcolony/sdk/p$a;->c:Ljava/lang/String;

    .line 373
    iput p3, p0, Lcom/adcolony/sdk/p$a;->f:I

    .line 374
    iput p4, p0, Lcom/adcolony/sdk/p$a;->g:I

    .line 376
    iput v1, p0, Lcom/adcolony/sdk/p$a;->h:I

    .line 377
    :goto_0
    iget v0, p0, Lcom/adcolony/sdk/p$a;->h:I

    if-ge v0, p3, :cond_0

    .line 379
    iget v0, p0, Lcom/adcolony/sdk/p$a;->h:I

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adcolony/sdk/p$a;->h:I

    goto :goto_0

    .line 382
    :cond_0
    iput v1, p0, Lcom/adcolony/sdk/p$a;->i:I

    .line 383
    :goto_1
    iget v0, p0, Lcom/adcolony/sdk/p$a;->i:I

    if-ge v0, p4, :cond_1

    .line 385
    iget v0, p0, Lcom/adcolony/sdk/p$a;->i:I

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adcolony/sdk/p$a;->i:I

    goto :goto_1

    .line 387
    :cond_1
    return-void
.end method
