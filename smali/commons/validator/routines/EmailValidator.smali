.class public Lcommons/validator/routines/EmailValidator;
.super Ljava/lang/Object;
.source "EmailValidator.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final e:Lcommons/validator/routines/EmailValidator;

.field private static final f:Lcommons/validator/routines/EmailValidator;


# instance fields
.field private final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const-string v0, "^\\s*?(.+)@(.+?)\\s*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcommons/validator/routines/EmailValidator;->a:Ljava/util/regex/Pattern;

    .line 50
    const-string v0, "^\\[(.*)\\]$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcommons/validator/routines/EmailValidator;->b:Ljava/util/regex/Pattern;

    .line 51
    const-string v0, "^\\s*(([^\\s\\p{Cntrl}\\(\\)<>@,;:\'\\\\\\\"\\.\\[\\]]|\')+|(\"[^\"]*\"))(\\.(([^\\s\\p{Cntrl}\\(\\)<>@,;:\'\\\\\\\"\\.\\[\\]]|\')+|(\"[^\"]*\")))*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcommons/validator/routines/EmailValidator;->c:Ljava/util/regex/Pattern;

    .line 59
    new-instance v0, Lcommons/validator/routines/EmailValidator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcommons/validator/routines/EmailValidator;-><init>(Z)V

    sput-object v0, Lcommons/validator/routines/EmailValidator;->e:Lcommons/validator/routines/EmailValidator;

    .line 65
    new-instance v0, Lcommons/validator/routines/EmailValidator;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcommons/validator/routines/EmailValidator;-><init>(Z)V

    sput-object v0, Lcommons/validator/routines/EmailValidator;->f:Lcommons/validator/routines/EmailValidator;

    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-boolean p1, p0, Lcommons/validator/routines/EmailValidator;->d:Z

    .line 98
    return-void
.end method

.method public static getInstance()Lcommons/validator/routines/EmailValidator;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcommons/validator/routines/EmailValidator;->e:Lcommons/validator/routines/EmailValidator;

    return-object v0
.end method

.method public static getInstance(Z)Lcommons/validator/routines/EmailValidator;
    .locals 1

    .prologue
    .line 84
    if-eqz p0, :cond_0

    .line 85
    sget-object v0, Lcommons/validator/routines/EmailValidator;->f:Lcommons/validator/routines/EmailValidator;

    .line 87
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcommons/validator/routines/EmailValidator;->e:Lcommons/validator/routines/EmailValidator;

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 141
    sget-object v1, Lcommons/validator/routines/EmailValidator;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 143
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    invoke-static {}, Lcommons/validator/routines/InetAddressValidator;->getInstance()Lcommons/validator/routines/InetAddressValidator;

    move-result-object v2

    .line 146
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcommons/validator/routines/InetAddressValidator;->isValid(Ljava/lang/String;)Z

    move-result v0

    .line 152
    :cond_0
    :goto_0
    return v0

    .line 149
    :cond_1
    iget-boolean v1, p0, Lcommons/validator/routines/EmailValidator;->d:Z

    .line 150
    invoke-static {v1}, Lcommons/validator/routines/DomainValidator;->getInstance(Z)Lcommons/validator/routines/DomainValidator;

    move-result-object v1

    .line 151
    invoke-virtual {v1, p1}, Lcommons/validator/routines/DomainValidator;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 152
    invoke-virtual {v1, p1}, Lcommons/validator/routines/DomainValidator;->isValidTld(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcommons/validator/routines/EmailValidator;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public isValid(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 108
    if-nez p1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v0

    .line 112
    :cond_1
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 117
    sget-object v2, Lcommons/validator/routines/EmailValidator;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 118
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcommons/validator/routines/EmailValidator;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcommons/validator/routines/EmailValidator;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 130
    goto :goto_0
.end method
