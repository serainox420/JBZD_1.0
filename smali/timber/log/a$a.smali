.class public abstract Ltimber/log/a$a;
.super Ljava/lang/Object;
.source "Timber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltimber/log/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Ltimber/log/a$a;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 554
    new-instance v0, Ljava/io/StringWriter;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/io/StringWriter;-><init>(I)V

    .line 555
    new-instance v1, Ljava/io/PrintWriter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 556
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 557
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 558
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private varargs a(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 522
    invoke-virtual {p0}, Ltimber/log/a$a;->a()Ljava/lang/String;

    move-result-object v1

    .line 524
    invoke-virtual {p0, v1, p1}, Ltimber/log/a$a;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 528
    if-eqz p2, :cond_0

    .line 531
    invoke-direct {p0, p2}, Ltimber/log/a$a;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 541
    :cond_2
    :goto_1
    invoke-virtual {p0, p1, v1, v0, p2}, Ltimber/log/a$a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 533
    :cond_3
    array-length v0, p4

    if-lez v0, :cond_4

    .line 534
    invoke-virtual {p0, p3, p4}, Ltimber/log/a$a;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 536
    :goto_2
    if-eqz p2, :cond_2

    .line 537
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, Ltimber/log/a$a;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, p3

    goto :goto_2
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Ltimber/log/a$a;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 395
    if-eqz v0, :cond_0

    .line 396
    iget-object v1, p0, Ltimber/log/a$a;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 398
    :cond_0
    return-object v0
.end method

.method protected abstract a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 418
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Ltimber/log/a$a;->a(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 419
    return-void
.end method

.method protected a(I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 512
    const/4 v0, 0x1

    return v0
.end method

.method protected a(Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 517
    invoke-virtual {p0, p2}, Ltimber/log/a$a;->a(I)Z

    move-result v0

    return v0
.end method

.method protected b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 548
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
