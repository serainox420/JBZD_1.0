.class Lio/realm/internal/Collection$a;
.super Ljava/lang/Object;
.source "Collection.java"

# interfaces
.implements Lio/realm/internal/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/realm/internal/i$a",
        "<",
        "Lio/realm/internal/Collection$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lio/realm/g;


# direct methods
.method constructor <init>(Lio/realm/g;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lio/realm/internal/Collection$a;->a:Lio/realm/g;

    .line 81
    return-void
.end method


# virtual methods
.method public a(Lio/realm/internal/Collection$b;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lio/realm/internal/Collection$a;->a:Lio/realm/g;

    invoke-virtual {p1, p2, v0}, Lio/realm/internal/Collection$b;->a(Ljava/lang/Object;Lio/realm/g;)V

    .line 87
    return-void
.end method

.method public bridge synthetic a(Lio/realm/internal/i$b;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 76
    check-cast p1, Lio/realm/internal/Collection$b;

    invoke-virtual {p0, p1, p2}, Lio/realm/internal/Collection$a;->a(Lio/realm/internal/Collection$b;Ljava/lang/Object;)V

    return-void
.end method
