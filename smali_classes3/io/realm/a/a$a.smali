.class Lio/realm/a/a$a;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lio/realm/a/a$a;->a:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lio/realm/a/a$1;)V
    .locals 0

    .prologue
    .line 371
    invoke-direct {p0}, Lio/realm/a/a$a;-><init>()V

    return-void
.end method
