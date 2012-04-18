.class public final enum Lcom/android/mms/ui/MmsTabActivity$TabState;
.super Ljava/lang/Enum;
.source "MmsTabActivity.java"


# static fields
.field public static final enum rH:Lcom/android/mms/ui/MmsTabActivity$TabState;

.field public static final enum rI:Lcom/android/mms/ui/MmsTabActivity$TabState;

.field public static final enum rJ:Lcom/android/mms/ui/MmsTabActivity$TabState;

.field private static final synthetic rK:[Lcom/android/mms/ui/MmsTabActivity$TabState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    #const/4 v4, 0x2
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-instance v0, Lcom/android/mms/ui/MmsTabActivity$TabState;

    const-string v1, "CONVERSATION"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/MmsTabActivity$TabState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/ui/MmsTabActivity$TabState;->rH:Lcom/android/mms/ui/MmsTabActivity$TabState;

    .line 53
    new-instance v0, Lcom/android/mms/ui/MmsTabActivity$TabState;

    const-string v1, "BOOKMARK"

    invoke-direct {v0, v1, v3}, Lcom/android/mms/ui/MmsTabActivity$TabState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/ui/MmsTabActivity$TabState;->rI:Lcom/android/mms/ui/MmsTabActivity$TabState;

    .line 54
    new-instance v0, Lcom/android/mms/ui/MmsTabActivity$TabState;

    const-string v1, "FESTIVAL"

    invoke-direct {v0, v1, v4}, Lcom/android/mms/ui/MmsTabActivity$TabState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/ui/MmsTabActivity$TabState;->rJ:Lcom/android/mms/ui/MmsTabActivity$TabState;

    .line 51
    # MA Remove and modify to 0x2 (2 indexes for the array)
    #const/4 v0, 0x3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/mms/ui/MmsTabActivity$TabState;

    sget-object v1, Lcom/android/mms/ui/MmsTabActivity$TabState;->rH:Lcom/android/mms/ui/MmsTabActivity$TabState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/mms/ui/MmsTabActivity$TabState;->rI:Lcom/android/mms/ui/MmsTabActivity$TabState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/mms/ui/MmsTabActivity$TabState;->rJ:Lcom/android/mms/ui/MmsTabActivity$TabState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/ui/MmsTabActivity$TabState;->rK:[Lcom/android/mms/ui/MmsTabActivity$TabState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static ao(I)Lcom/android/mms/ui/MmsTabActivity$TabState;
    .locals 3
    .parameter

    .prologue
    .line 57
    sget-object v0, Lcom/android/mms/ui/MmsTabActivity$TabState;->rH:Lcom/android/mms/ui/MmsTabActivity$TabState;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsTabActivity$TabState;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_0

    .line 58
    sget-object v0, Lcom/android/mms/ui/MmsTabActivity$TabState;->rH:Lcom/android/mms/ui/MmsTabActivity$TabState;

    .line 64
    :goto_0
    return-object v0

    .line 60
    :cond_0
    sget-object v0, Lcom/android/mms/ui/MmsTabActivity$TabState;->rI:Lcom/android/mms/ui/MmsTabActivity$TabState;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsTabActivity$TabState;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_1

    .line 61
    sget-object v0, Lcom/android/mms/ui/MmsTabActivity$TabState;->rI:Lcom/android/mms/ui/MmsTabActivity$TabState;

    goto :goto_0

    .line 63
    :cond_1
    sget-object v0, Lcom/android/mms/ui/MmsTabActivity$TabState;->rJ:Lcom/android/mms/ui/MmsTabActivity$TabState;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsTabActivity$TabState;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_2

    .line 64
    sget-object v0, Lcom/android/mms/ui/MmsTabActivity$TabState;->rJ:Lcom/android/mms/ui/MmsTabActivity$TabState;

    goto :goto_0

    .line 66
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/mms/ui/MmsTabActivity$TabState;
    .locals 1
    .parameter

    .prologue
    .line 51
    const-class v0, Lcom/android/mms/ui/MmsTabActivity$TabState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MmsTabActivity$TabState;

    return-object v0
.end method

.method public static values()[Lcom/android/mms/ui/MmsTabActivity$TabState;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/mms/ui/MmsTabActivity$TabState;->rK:[Lcom/android/mms/ui/MmsTabActivity$TabState;

    invoke-virtual {v0}, [Lcom/android/mms/ui/MmsTabActivity$TabState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mms/ui/MmsTabActivity$TabState;

    return-object v0
.end method
