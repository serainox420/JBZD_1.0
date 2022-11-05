.class public final Lcom/smaato/soma/video/a/b$c;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smaato/soma/video/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/video/a/b;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:[Ljava/io/InputStream;

.field private final e:[J


# direct methods
.method private constructor <init>(Lcom/smaato/soma/video/a/b;Ljava/lang/String;J[Ljava/io/InputStream;[J)V
    .locals 1

    .prologue
    .line 660
    iput-object p1, p0, Lcom/smaato/soma/video/a/b$c;->a:Lcom/smaato/soma/video/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 661
    iput-object p2, p0, Lcom/smaato/soma/video/a/b$c;->b:Ljava/lang/String;

    .line 662
    iput-wide p3, p0, Lcom/smaato/soma/video/a/b$c;->c:J

    .line 663
    iput-object p5, p0, Lcom/smaato/soma/video/a/b$c;->d:[Ljava/io/InputStream;

    .line 664
    iput-object p6, p0, Lcom/smaato/soma/video/a/b$c;->e:[J

    .line 665
    return-void
.end method

.method synthetic constructor <init>(Lcom/smaato/soma/video/a/b;Ljava/lang/String;J[Ljava/io/InputStream;[JLcom/smaato/soma/video/a/b$1;)V
    .locals 1

    .prologue
    .line 654
    invoke-direct/range {p0 .. p6}, Lcom/smaato/soma/video/a/b$c;-><init>(Lcom/smaato/soma/video/a/b;Ljava/lang/String;J[Ljava/io/InputStream;[J)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 692
    iget-object v1, p0, Lcom/smaato/soma/video/a/b$c;->d:[Ljava/io/InputStream;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 693
    invoke-static {v3}, Lcom/smaato/soma/video/a/d;->a(Ljava/io/Closeable;)V

    .line 692
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 695
    :cond_0
    return-void
.end method
