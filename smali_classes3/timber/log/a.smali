.class public final Ltimber/log/a;
.super Ljava/lang/Object;
.source "Timber.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltimber/log/a$a;
    }
.end annotation


# static fields
.field static volatile a:[Ltimber/log/a$a;

.field private static final b:[Ltimber/log/a$a;

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltimber/log/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ltimber/log/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    new-array v0, v0, [Ltimber/log/a$a;

    sput-object v0, Ltimber/log/a;->b:[Ltimber/log/a$a;

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ltimber/log/a;->c:Ljava/util/List;

    .line 208
    sget-object v0, Ltimber/log/a;->b:[Ltimber/log/a$a;

    sput-object v0, Ltimber/log/a;->a:[Ltimber/log/a$a;

    .line 211
    new-instance v0, Ltimber/log/a$1;

    invoke-direct {v0}, Ltimber/log/a$1;-><init>()V

    sput-object v0, Ltimber/log/a;->d:Ltimber/log/a$a;

    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NonNls;
        .end annotation
    .end param

    .prologue
    .line 35
    sget-object v0, Ltimber/log/a;->d:Ltimber/log/a$a;

    invoke-virtual {v0, p0, p1}, Ltimber/log/a$a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    return-void
.end method
