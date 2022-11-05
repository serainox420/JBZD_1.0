.class public abstract Landroid/support/v4/c/a/a;
.super Ljava/lang/Object;
.source "DisplayManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/c/a/a$a;,
        Landroid/support/v4/c/a/a$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/support/v4/c/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/support/v4/c/a/a;->a:Ljava/util/WeakHashMap;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/support/v4/c/a/a;
    .locals 3

    .prologue
    .line 54
    sget-object v1, Landroid/support/v4/c/a/a;->a:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 55
    :try_start_0
    sget-object v0, Landroid/support/v4/c/a/a;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/c/a/a;

    .line 56
    if-nez v0, :cond_0

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 58
    const/16 v2, 0x11

    if-lt v0, v2, :cond_1

    .line 59
    new-instance v0, Landroid/support/v4/c/a/a$a;

    invoke-direct {v0, p0}, Landroid/support/v4/c/a/a$a;-><init>(Landroid/content/Context;)V

    .line 63
    :goto_0
    sget-object v2, Landroid/support/v4/c/a/a;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_0
    monitor-exit v1

    return-object v0

    .line 61
    :cond_1
    new-instance v0, Landroid/support/v4/c/a/a$b;

    invoke-direct {v0, p0}, Landroid/support/v4/c/a/a$b;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
