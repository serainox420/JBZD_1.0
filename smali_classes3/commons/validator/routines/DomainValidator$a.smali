.class Lcommons/validator/routines/DomainValidator$a;
.super Ljava/lang/Object;
.source "DomainValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcommons/validator/routines/DomainValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1107
    invoke-static {}, Lcommons/validator/routines/DomainValidator$a;->b()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcommons/validator/routines/DomainValidator$a;->a:Ljava/lang/reflect/Method;

    return-void
.end method

.method static synthetic a()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 1098
    sget-object v0, Lcommons/validator/routines/DomainValidator$a;->a:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private static b()Ljava/lang/reflect/Method;
    .locals 5

    .prologue
    .line 1101
    :try_start_0
    const-string v0, "java.net.IDN"

    const/4 v1, 0x0

    const-class v2, Lcommons/validator/routines/DomainValidator;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 1102
    const-string v1, "toASCII"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1104
    :goto_0
    return-object v0

    .line 1103
    :catch_0
    move-exception v0

    .line 1104
    const/4 v0, 0x0

    goto :goto_0
.end method
