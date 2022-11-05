.class final enum Lpl/jbzd/app/view/feed/FeedAdapter$a;
.super Ljava/lang/Enum;
.source "FeedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/jbzd/app/view/feed/FeedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lpl/jbzd/app/view/feed/FeedAdapter$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lpl/jbzd/app/view/feed/FeedAdapter$a;

.field public static final enum b:Lpl/jbzd/app/view/feed/FeedAdapter$a;

.field private static final synthetic c:[Lpl/jbzd/app/view/feed/FeedAdapter$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 123
    new-instance v0, Lpl/jbzd/app/view/feed/FeedAdapter$a;

    const-string v1, "MEDIA"

    invoke-direct {v0, v1, v2}, Lpl/jbzd/app/view/feed/FeedAdapter$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/jbzd/app/view/feed/FeedAdapter$a;->a:Lpl/jbzd/app/view/feed/FeedAdapter$a;

    new-instance v0, Lpl/jbzd/app/view/feed/FeedAdapter$a;

    const-string v1, "COMMENTS"

    invoke-direct {v0, v1, v3}, Lpl/jbzd/app/view/feed/FeedAdapter$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/jbzd/app/view/feed/FeedAdapter$a;->b:Lpl/jbzd/app/view/feed/FeedAdapter$a;

    const/4 v0, 0x2

    new-array v0, v0, [Lpl/jbzd/app/view/feed/FeedAdapter$a;

    sget-object v1, Lpl/jbzd/app/view/feed/FeedAdapter$a;->a:Lpl/jbzd/app/view/feed/FeedAdapter$a;

    aput-object v1, v0, v2

    sget-object v1, Lpl/jbzd/app/view/feed/FeedAdapter$a;->b:Lpl/jbzd/app/view/feed/FeedAdapter$a;

    aput-object v1, v0, v3

    sput-object v0, Lpl/jbzd/app/view/feed/FeedAdapter$a;->c:[Lpl/jbzd/app/view/feed/FeedAdapter$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lpl/jbzd/app/view/feed/FeedAdapter$a;
    .locals 1

    .prologue
    .line 123
    const-class v0, Lpl/jbzd/app/view/feed/FeedAdapter$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/FeedAdapter$a;

    return-object v0
.end method

.method public static values()[Lpl/jbzd/app/view/feed/FeedAdapter$a;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lpl/jbzd/app/view/feed/FeedAdapter$a;->c:[Lpl/jbzd/app/view/feed/FeedAdapter$a;

    invoke-virtual {v0}, [Lpl/jbzd/app/view/feed/FeedAdapter$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpl/jbzd/app/view/feed/FeedAdapter$a;

    return-object v0
.end method
