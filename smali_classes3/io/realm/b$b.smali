.class public final Lio/realm/b$b;
.super Ljava/lang/Object;
.source "BaseRealm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Lio/realm/b;

.field private b:Lio/realm/internal/n;

.field private c:Lio/realm/internal/c;

.field private d:Z

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/realm/b;
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lio/realm/b$b;->a:Lio/realm/b;

    return-object v0
.end method

.method public a(Lio/realm/b;Lio/realm/internal/n;Lio/realm/internal/c;ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/b;",
            "Lio/realm/internal/n;",
            "Lio/realm/internal/c;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 674
    iput-object p1, p0, Lio/realm/b$b;->a:Lio/realm/b;

    .line 675
    iput-object p2, p0, Lio/realm/b$b;->b:Lio/realm/internal/n;

    .line 676
    iput-object p3, p0, Lio/realm/b$b;->c:Lio/realm/internal/c;

    .line 677
    iput-boolean p4, p0, Lio/realm/b$b;->d:Z

    .line 678
    iput-object p5, p0, Lio/realm/b$b;->e:Ljava/util/List;

    .line 679
    return-void
.end method

.method public b()Lio/realm/internal/n;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lio/realm/b$b;->b:Lio/realm/internal/n;

    return-object v0
.end method

.method public c()Lio/realm/internal/c;
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lio/realm/b$b;->c:Lio/realm/internal/c;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 694
    iget-boolean v0, p0, Lio/realm/b$b;->d:Z

    return v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 698
    iget-object v0, p0, Lio/realm/b$b;->e:Ljava/util/List;

    return-object v0
.end method

.method public f()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 702
    iput-object v1, p0, Lio/realm/b$b;->a:Lio/realm/b;

    .line 703
    iput-object v1, p0, Lio/realm/b$b;->b:Lio/realm/internal/n;

    .line 704
    iput-object v1, p0, Lio/realm/b$b;->c:Lio/realm/internal/c;

    .line 705
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/b$b;->d:Z

    .line 706
    iput-object v1, p0, Lio/realm/b$b;->e:Ljava/util/List;

    .line 707
    return-void
.end method
